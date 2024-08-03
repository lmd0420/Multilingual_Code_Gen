# Inference

# Program for fine tuning eeg_encoder through image embeddings and contrastive loss
# sample command:


import random
import logging
import torch
import json
import os
import numpy as np


from tqdm import tqdm
from args import get_args_for_llm_inference
from models import EEGModelForCausalLM
from datautils import EEGInferenceDataset, SplitterInference
from torch.utils.data import DataLoader
from transformers import AutoTokenizer, BitsAndBytesConfig
import pandas as pd


logging.basicConfig()
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)


def prepare_inputs(self, input_ids1, input_ids2, mm_emb, type="train"):
    batch_size, max_length = input_ids1.shape
    hidden_dim = mm_emb.shape[-1]
    mm_seq_len = mm_emb.shape[1]

    # Compute token embeddings
    if self.use_lora:
        try:
            input_embeds1 = self.llm.model.model.embed_tokens(input_ids1)
            input_embeds2 = self.llm.model.model.embed_tokens(input_ids2)
        except:
            # for decoder only models like OPT
            input_embeds1 = self.llm.model.model.decoder.embed_tokens(input_ids1)
            input_embeds2 = self.llm.model.model.decoder.embed_tokens(input_ids2)
    else:
        try:
            input_embeds1 = self.llm.model.embed_tokens(input_ids1)
            input_embeds2 = self.llm.model.embed_tokens(input_ids2)
        except:
            input_embeds1 = self.llm.model.decoder.embed_tokens(input_ids1)
            input_embeds2 = self.llm.model.decoder.embed_tokens(input_ids2)

    # Create attention masks (1 for non-padding tokens, 0 for padding tokens)
    attention_masks1 = (input_ids1 != self.padding_token_id).float()
    attention_masks2 = (input_ids2 != self.padding_token_id).float()

    # Compute the effective length for each input
    effective_lengths1 = attention_masks1.sum(dim=1).long()
    effective_lengths2 = attention_masks2.sum(dim=1).long()

    # Calculate the maximum effective lengths for positioning
    max_effective_length1 = max(effective_lengths1).item()
    max_effective_length2 = max(effective_lengths2).item()

    # Initialize final embeddings and labels
    final_max_length = mm_seq_len + max_effective_length1 + max_effective_length2

    final_input_embeds = torch.zeros(
        batch_size, final_max_length, hidden_dim, device=input_embeds1.device
    )
    attention_masks = torch.zeros(
        batch_size, final_max_length, device=input_embeds1.device
    )
    labels = torch.full(
        (batch_size, final_max_length),
        self.padding_token_id,
        device=input_ids1.device,
    )

    for i in range(batch_size):
        effective_length1 = effective_lengths1[i].item()
        effective_length2 = effective_lengths2[i].item()

        total_len = mm_seq_len + effective_length1 + effective_length2
        start_idx = final_max_length - total_len
        # First append the mm_embeds
        final_input_embeds[i, start_idx : start_idx + mm_seq_len, :] = mm_emb[i, :, :]

        final_input_embeds[
            i,
            start_idx + mm_seq_len : start_idx + mm_seq_len + effective_length1,
            :,
        ] = input_embeds1[i, -effective_length1:, :]

        final_input_embeds[
            i, start_idx + effective_length1 + mm_seq_len : final_max_length, :
        ] = input_embeds2[i, -effective_length2:, :]

        attention_masks[i, start_idx:] = 1
        labels[i, start_idx : start_idx + mm_seq_len] = (
            self.bos_token_id  # TODO: This is bad. Assumes only mm_embeds with sequence len = 1
        )
        labels[
            i, start_idx + mm_seq_len : start_idx + mm_seq_len + effective_length1
        ] = input_ids1[i, -effective_length1:]

        labels[i, start_idx + effective_length1 + mm_seq_len : final_max_length] = (
            input_ids2[i, -effective_length2:]
        )

    # Create position ids
    final_input_embeds = final_input_embeds.to(input_embeds1.dtype)

    # attention_masks = attention_masks.to(input_embeds1.dtype)
    # print(attention_masks)
    if type != "train":
        attention_masks = None

    return final_input_embeds, attention_masks, labels


def set_seed(seed):
    """Set seed for reproducibility"""
    # Set seed for Python's built-in random module
    random.seed(seed)

    # Set seed for numpy
    np.random.seed(seed)

    # Set seed for PyTorch
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)  # if you are using multi-GPU
    torch.backends.cudnn.deterministic = True
    torch.backends.cudnn.benchmark = False  # disable to ensure reproducibility


def main():
    set_seed(42)
    args = get_args_for_llm_inference()
    tokenizer = AutoTokenizer.from_pretrained(args.model_path)
    tokenizer.pad_token_id = tokenizer.eos_token_id
    tokenizer.padding_side = "left"
    prompt_begin = " [INST]"
    prompt_end = "[/INST] "

    if "llama" in args.model_path:
        prompt_begin = " <|start_header_id|>"
        prompt_end = "<|end_header_id|> "

    if "phi" in args.model_path:
        prompt_begin = " <|user|>"
        prompt_end = "<|assistant|> "

    max_len = 100
    prompt_prefix = f"{prompt_begin} You are an AI assistant who is good at describing images. Describe this image of "

    print("Loading model...")

    model = EEGModelForCausalLM.from_pretrained(
        pretrained_model_name_or_path=args.model_path,
    )

    # For stage 3, we only train the mm_projector, everything else is static
    model.eeg_encoder.to(args.device)
    model.mm_proj.to(args.device)
    model.eval()
    softmax = torch.nn.Softmax(dim=1)

    dataset = EEGInferenceDataset(
        args=args,
    )
    loaders = {
        split: DataLoader(
            SplitterInference(
                dataset,
                split_path=args.splits_path,
                split_num=args.split_num,
                split_name=split,
            ),
            batch_size=1,
            drop_last=True,
            shuffle=True,
        )
        for split in ["train", "val", "test"]
    }
    test_dataloader = loaders["test"]

    with open(os.path.join(args.model_path, "id2label.json")) as f:
        id2label = json.load(f)
        id2label = {int(k): v for k, v in id2label.items()}

    all_data = []

    for batch in tqdm(test_dataloader):
        eeg, label_string, caption_raw, image_path = batch
        eeg = eeg.to(args.device)
        emb_out, cls_out = model.eeg_encoder(eeg)
        preds = softmax(cls_out).argmax(dim=1)

        pred_label_strings = []
        for p in preds:
            pred_label_strings.append(id2label[p.item()])

        batched_input_ids1 = []
        batched_input_ids2 = []

        batch_data = []

        for i, exp_label in enumerate(label_string):
            # print(f"Expected label: {exp_label}")
            # print(f"Output pred: {pred_label_strings[i]}")
            data = {}
            data["Ground Truth Image"] = image_path[i]
            data["Expected object"] = exp_label
            data["Predicted object"] = pred_label_strings[i]
            batch_data.append(data)
            individual_input_ids1 = tokenizer(
                prompt_prefix,
                add_special_tokens=False,
                truncation=True,
                return_tensors="pt",
            ).input_ids
            payload = pred_label_strings[i] + " " + prompt_end
            # print("PP", prompt_prefix + " " + payload)
            individual_input_ids2 = tokenizer(
                payload.strip(),
                add_special_tokens=False,
                truncation=True,
                return_tensors="pt",
            ).input_ids

            individual_input_ids1 = individual_input_ids1.squeeze(0)
            individual_input_ids2 = individual_input_ids2.squeeze(0)
            batched_input_ids1.append(individual_input_ids1)
            batched_input_ids2.append(individual_input_ids2)

        batched_input_ids1 = torch.stack(batched_input_ids1)
        batched_input_ids2 = torch.stack(batched_input_ids2)

        output_ids, labels_gen = model.generate(
            input_ids1=batched_input_ids1,
            input_ids2=batched_input_ids2,
            mm_embeds=emb_out,
            max_new_tokens=max_len,
        )
        output_text = tokenizer.batch_decode(output_ids, skip_special_tokens=True)

        for j, output in enumerate(output_text):
            print("Output generated:", output)
            print("Expected caption:", caption_raw[j])
            batch_data[j]["Expected Caption"] = (
                caption_raw[j].replace("<s>", "").replace("</s>", "")
            )
            batch_data[j]["Generated Caption"] = output
            # print(labels_gen[j].shape)
            # print("Label gen", tokenizer.batch_decode(labels_gen[j].unsqueeze(0)))
        all_data += batch_data
    df = pd.DataFrame(all_data)
    df.to_csv(args.dest)


if __name__ == "__main__":
    main()
