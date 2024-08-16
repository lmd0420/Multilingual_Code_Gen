# sample command : python fine_tune.py --model_name mistralai/Mistral-7B-Instruct-v0.3 --output_dir results_mistral7b-it

import torch

from transformers import AutoTokenizer, Trainer, TrainingArguments, AutoModelForCausalLM
from datasets import load_dataset
from torch.utils.data import DataLoader
from transformers import BitsAndBytesConfig
from model import MultilingualProjector, MultilingualProjectorConfig
from datautils import MultilingualMBPPDataset
from args import get_args_for_proj_training
from loss import MSELoss
import tqdm
import numpy as np


class ProjectorTrainer(Trainer):
    def __init__(self, loss_fn=None, base_model=None, **kwargs):
        super().__init__(**kwargs)
        self.loss_fn = loss_fn
        self.base_model = base_model

    def compute_loss(self, model, inputs, return_outputs=False):
        # print((inputs))
        mm_emb = inputs["multi_embeds"]
        token_ids = inputs["prompt_token_ids"]
        mm_emb = [item for sublist in mm_emb for item in sublist]
        # mm_emb = np.concatenate(mm_emb, axis=0)

        token_ids = [item for sublist in token_ids for item in sublist]
        input_ids_tensor = torch.tensor(token_ids, dtype=torch.long)

        reference_embeddings = self.base_model.model.embed_tokens(input_ids_tensor)
        target_embeddings = torch.tensor(mm_emb, device=reference_embeddings.device)
        target_embeddings = self.model(target_embeddings)
        target_embeddings = target_embeddings.to(reference_embeddings.dtype)
        loss = self.loss_fn(target_embeddings, reference_embeddings)
        return (loss, target_embeddings) if return_outputs else loss

    def evaluate(self, ignore_keys=None, metric_key_prefix: str = "eval"):
        self.model.eval()
        eval_dataloader = self.get_eval_dataloader(eval_dataset=None)
        for batch in tqdm.tqdm(eval_dataloader):
            mm_emb = batch["multi_embeds"]
            token_ids = batch["prompt_token_ids"]
            mm_emb = [item for sublist in mm_emb for item in sublist]
            token_ids = [item for sublist in token_ids for item in sublist]
            input_ids_tensor = torch.tensor(token_ids, dtype=torch.long)
            reference_embeddings = self.base_model.model.embed_tokens(input_ids_tensor)
            target_embeddings = torch.tensor(
                mm_emb,
                device=reference_embeddings.device,
            )
            target_embeddings = self.model(target_embeddings)
            target_embeddings = target_embeddings.to(reference_embeddings.dtype)
            loss = self.loss_fn(target_embeddings, reference_embeddings)
        print({"eval_loss": loss.item()})
        return {"eval_loss": loss.item()}


# Load tokenizer
def main(args):
    tokenizer = AutoTokenizer.from_pretrained(args.model_name, trust_remote_code=True)
    tokenizer.pad_token = tokenizer.eos_token
    tokenizer.padding_side = "right"

    # Load dataset (assuming you already have the HuggingfaceDataset class defined)
    train_dataset = MultilingualMBPPDataset(split="train", tokenizer=tokenizer)
    val_dataset = MultilingualMBPPDataset(split="validation", tokenizer=tokenizer)

    # Define data collator for language modeling

    bnb_config = BitsAndBytesConfig(
        load_in_4bit=True,
        bnb_4bit_quant_type="nf4",
        bnb_4bit_compute_dtype="float16",
        bnb_4bit_use_double_quant=False,
    )

    base_model = AutoModelForCausalLM.from_pretrained(
        args.model_name,
        quantization_config=bnb_config,
    )
    base_model.eval()

    config = MultilingualProjectorConfig(hidden_size=base_model.config.hidden_size)
    model = MultilingualProjector(config=config)

    training_arguments = TrainingArguments(
        output_dir=args.output,
        num_train_epochs=args.num_epochs,
        per_device_train_batch_size=args.batch_size,
        per_device_eval_batch_size=args.batch_size,
        optim=args.optim,
        save_steps=args.save_steps,
        logging_steps=args.logging_steps,
        learning_rate=args.learning_rate,
        weight_decay=args.weight_decay,
        max_grad_norm=args.max_grad_norm,
        max_steps=args.max_steps,
        warmup_ratio=args.warmup_ratio,
        group_by_length=args.group_by_length,
        lr_scheduler_type=args.lr_scheduler_type,
        load_best_model_at_end=True,
        save_strategy="epoch",
        eval_strategy="epoch",
        report_to="tensorboard",
    )
    # Initialize Trainer
    trainer = ProjectorTrainer(
        model=model,
        loss_fn=MSELoss(),
        base_model=base_model,
        args=training_arguments,
        train_dataset=train_dataset,
        eval_dataset=val_dataset,
        data_collator=train_dataset.collect_fn,
    )

    # Start fine-tuning
    trainer.train()
    trainer.save_model(args.output)


if __name__ == "__main__":
    args = get_args_for_proj_training()
    main(args)
