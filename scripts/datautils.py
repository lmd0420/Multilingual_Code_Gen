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
        start_symbol="<s>",
        end_symbol="</s>",
        max_seq_length=100,
    ):
        self.dataset = load_dataset(dataset_name, subset_name, split=split)
        self.tokenizer = tokenizer
        self.start_symbol = start_symbol
        self.end_symbol = end_symbol

        # Initialize the LASER encoder
        self.encoder = LaserEncoderPipeline(laser="laser2")
        self.encoder.encoder.use_cuda = False
        self.encoder.encoder.encoder.cpu()
        self.max_len = max_seq_length

    def __len__(self):
        return len(self.dataset)

    def __getitem__(self, idx):
        item = self.dataset[idx]

        # Prepare the input text
        input_text = f"{self.start_symbol} {item['prompt']} {self.end_symbol}"

        # Prepare the output code (without start and end symbols)
        output_code = item["code"]

        # Concatenate input text and output code
        combined_text = f"{input_text} {output_code}" if output_code else input_text

        # Tokenize the combined text
        encodings = self.tokenizer(
            combined_text,
            truncation=True,
            padding="max_length",
            return_tensors="pt",
            max_length=self.max_len,
        )
        # Compute multi_embeds using the LASER encoder
        multi_embeds = self.encoder.encode_sentences([item["prompt"]])

        return {
            "input_ids": encodings["input_ids"].squeeze(),
            "attention_mask": encodings["attention_mask"].squeeze(),
            "multi_embeds": multi_embeds.squeeze(),
            "labels": encodings["input_ids"].squeeze(),
        }


class MultilingualMBPPDatasetInference(Dataset):
    def __init__(
        self,
        csv_file: str,
        tokenizer,
        start_symbol: str,
        end_symbol: str,
        lang: str = "eng_Latn",
    ):
        """
        Dataset class for processing a CSV file with text and code columns for inference.

        Args:
            csv_file (str): Path to the CSV file containing data.
            tokenizer (PreTrainedTokenizer): Tokenizer for processing the text data.
            start_symbol (str): Symbol to prepend to the input text.
            end_symbol (str): Symbol to append to the input text.
            lang (str): Language code for the LASER encoder. Default is "eng_Latn".
        """
        self.data = pd.read_csv(csv_file)
        self.tokenizer = tokenizer
        self.start_symbol = start_symbol
        self.end_symbol = end_symbol
        self.encoder = LaserEncoderPipeline(lang=lang)

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        item = self.data.iloc[idx]
        text = item["prompt"]
        code = item["code"]

        # Append start and end symbols to the text
        processed_text = f"{self.start_symbol} {text} {self.end_symbol}"

        # Tokenize the text
        tokenized_output = self.tokenizer(
            processed_text, padding="max_length", truncation=True, return_tensors="pt"
        )

        # Generate LASER embeddings
        multi_embeds = self.encoder.encode_sentences([text])
        multi_embeds = torch.tensor(multi_embeds)

        return {
            "input_ids": tokenized_output["input_ids"].squeeze(0),
            "attention_mask": tokenized_output["attention_mask"].squeeze(0),
            "multi_embeds": multi_embeds.squeeze(0),
            "text": text,
            "code": code,
        }


# Example usage:
# from transformers import AutoTokenizer

# tokenizer = AutoTokenizer.from_pretrained("gpt2")

# train_dataset = HuggingfaceDataset(split="train", tokenizer=tokenizer, lang="eng_Latn")
# val_dataset = HuggingfaceDataset(split="validation", tokenizer=tokenizer, lang="eng_Latn")
# test_dataset = HuggingfaceDataset(split="test", tokenizer=tokenizer, lang="eng_Latn")
