from datasets import load_dataset
from torch.utils.data import Dataset
from laser_encoders import LaserEncoderPipeline

import pandas as pd
import torch

# MULTILINGUAL_SEQUENCCE_LEN = 5


class MultilingualMBPPDataset(Dataset):
    def __init__(
        self,
        dataset_name="google-research-datasets/mbpp",
        subset_name="sanitized",
        split="train",
        tokenizer=None,
        prompt_begin=" [INST]",
        prompt_end="[/INST] ",
        max_seq_length=250,
    ):
        #     if "llama" in tokenizer_path.lower():
        #         prompt_begin = " <|start_header_id|>"
        #         prompt_end = "<|end_header_id|> "
        #     elif "gemma" in tokenizer_path.lower():
        #         prompt_begin = " <start_of_turn>user\n"
        #         prompt_end = "<end_of_turn>"
        self.dataset = load_dataset(dataset_name, subset_name, split=split)
        self.tokenizer = tokenizer

        # Initialize the LASER encoder
        self.encoder = LaserEncoderPipeline(laser="laser2")
        self.encoder.encoder.use_cuda = False
        self.encoder.encoder.encoder.cpu()
        self.max_len = max_seq_length
        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = (
            f"{self.prompt_begin} <<SYS>>\nProvide answers in Python.\n<</SYS>>\n\n"
        )

    def __len__(self):
        return len(self.dataset)

    def __getitem__(self, idx):
        item = self.dataset[idx]

        # Prepare the input text
        input_text = item["prompt"]

        # Prepare the output code (without start and end symbols)
        output_code = item["code"]

        # Tokenize the combined text
        input_ids1 = self.tokenizer(
            self.prompt_prefix + input_text.strip(),
            padding="max_length",
            add_special_tokens=False,
            max_length=self.max_len,
            truncation=True,
            return_tensors="pt",
        ).input_ids
        input_ids2 = self.tokenizer(
            self.prompt_end + "\\n" + output_code,
            padding="max_length",
            add_special_tokens=False,
            max_length=self.max_len,
            truncation=True,
            return_tensors="pt",
        ).input_ids
        # Compute multi_embeds using the LASER encoder
        multi_embeds = self.encoder.encode_sentences([item["prompt"]])

        return {
            "input_ids1": input_ids1.squeeze(),
            "input_ids2": input_ids2.squeeze(),
            "multi_embeds": multi_embeds.squeeze(),
        }


class MultilingualMBPPDatasetBaseline(Dataset):
    def __init__(
        self,
        dataset_name="google-research-datasets/mbpp",
        subset_name="sanitized",
        split="train",
        tokenizer=None,
        prompt_begin=" [INST]",
        prompt_end="[/INST] ",
        max_seq_length=250,
    ):
        #     if "llama" in tokenizer_path.lower():
        #         prompt_begin = " <|start_header_id|>"
        #         prompt_end = "<|end_header_id|> "
        #     elif "gemma" in tokenizer_path.lower():
        #         prompt_begin = " <start_of_turn>user\n"
        #         prompt_end = "<end_of_turn>"
        self.dataset = load_dataset(dataset_name, subset_name, split=split)
        self.tokenizer = tokenizer

        self.max_len = max_seq_length
        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = (
            f"{self.prompt_begin} <<SYS>>\nProvide answers in Python.\n<</SYS>>\n\n"
        )

    def __len__(self):
        return len(self.dataset)

    def __getitem__(self, idx):
        item = self.dataset[idx]

        # Prepare the input text
        input_text = item["prompt"]

        # Prepare the output code (without start and end symbols)
        output_code = item["code"]

        # Tokenize the combined text
        input_ids = self.tokenizer(
            self.prompt_prefix
            + input_text.strip()
            + self.prompt_end
            + "\n"
            + output_code,
            padding="max_length",
            add_special_tokens=False,
            max_length=self.max_len,
            truncation=True,
            return_tensors="pt",
        ).input_ids
        input_ids = input_ids.squeeze()
        return {
            "input_ids": input_ids,
            "attention_mask": None,
            "labels": input_ids,
        }
