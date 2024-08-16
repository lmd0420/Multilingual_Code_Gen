from datasets import load_dataset
from torch.utils.data import Dataset
from laser_encoders import LaserEncoderPipeline

import pandas as pd
import nltk
from nltk.tokenize import word_tokenize
import jieba  # For Chinese tokenization
from janome.tokenizer import Tokenizer as JanomeTokenizer  # For Japanese tokenization

# Download necessary NLTK resources
nltk.download("punkt")


class MultilingualTokenizer:
    def __init__(self):
        # Define the supported languages
        self.supported_languages = ["en", "ru", "es", "hi", "zh", "ja"]
        self.japanese_tokenizer = JanomeTokenizer()  # Initialize the Japanese tokenizer

    def tokenize(self, text, language_code):
        if language_code not in self.supported_languages:
            raise ValueError(f"Unsupported language code: {language_code}")

        if language_code == "zh":
            # Use jieba for Chinese tokenization
            tokens = list(jieba.cut(text))
        elif language_code == "ja":
            # Use Janome for Japanese tokenization
            tokens = [token.surface for token in self.japanese_tokenizer.tokenize(text)]
        else:
            # For other languages supported by NLTK's punkt tokenizer
            tokens = word_tokenize(text)

        return tokens


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
        lang="en",
    ):
        #     if "llama" in tokenizer_path.lower():
        #         prompt_begin = " <|start_header_id|>"
        #         prompt_end = "<|end_header_id|> "
        #     elif "gemma" in tokenizer_path.lower():
        #         prompt_begin = " <start_of_turn>user\n"
        #         prompt_end = "<end_of_turn>"
        self.dataset = load_dataset(dataset_name, subset_name, split=split)
        self.tokenizer = tokenizer

        self.language_map = {
            "en": "eng_Latn",
            "zh-cn": "zho_Hant",
            "ru": "rus_Cyrl",
            "es": "spa_Latn",
            "hi": "hin_Deva",
            "jp": "jpn_Jpan",
        }

        # Initialize the LASER encoder
        self.encoder = LaserEncoderPipeline(lang=self.language_map[lang])
        self.encoder.encoder.use_cuda = False
        self.encoder.encoder.encoder.cpu()
        self.max_len = max_seq_length
        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = (
            f"{self.prompt_begin} <<SYS>>\\nProvide answers in Python.\\n<</SYS>>\\n\\n"
        )
        self.word_tokenizer = MultilingualTokenizer()

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
            self.prompt_prefix,
            add_special_tokens=False,
        ).input_ids
        input_ids2 = self.tokenizer(
            self.prompt_end + "\\n" + output_code,
            add_special_tokens=False,
        ).input_ids
        # Compute multi_embeds using the LASER encoder
        word_tokens = self.word_tokenizer.tokenize(input_text, language_code="en")

        multi_embeds = [self.encoder.encode_sentences([tok])[0] for tok in word_tokens]

        relevant_prompt_tokens = []
        for tok in word_tokens:
            input_ids = self.tokenizer(
                tok,
                add_special_tokens=False,
            ).input_ids
            # print(input_ids)
            # print(self.tokenizer.convert_ids_to_tokens(input_ids))
            tok_len = [len(t) for t in self.tokenizer.convert_ids_to_tokens(input_ids)]
            max_index = tok_len.index(max(tok_len))
            new_token_id = input_ids[max_index]
            relevant_prompt_tokens.append(new_token_id)

        return input_ids1, input_ids2, multi_embeds, relevant_prompt_tokens

    def collect_fn(self, data):
        all_multi_embeds = []
        all_relevant_prompt_tokens = []
        for instance in data:
            input_ids1, input_ids2, multi_embeds, relevant_prompt_tokens = instance
            all_multi_embeds.append(multi_embeds)
            all_relevant_prompt_tokens.append(relevant_prompt_tokens)
        return {
            "multi_embeds": all_multi_embeds,
            "prompt_token_ids": all_relevant_prompt_tokens,
        }


class MultilingualMBPPDatasetInference(Dataset):
    def __init__(
        self,
        dataset_name,
        subset_name="sanitized",
        split="train",
        tokenizer=None,
        prompt_begin=" [INST]",
        prompt_end="[/INST] ",
        max_seq_length=250,
        lang="en",
    ):
        #     if "llama" in tokenizer_path.lower():
        #         prompt_begin = " <|start_header_id|>"
        #         prompt_end = "<|end_header_id|> "
        #     elif "gemma" in tokenizer_path.lower():
        #         prompt_begin = " <start_of_turn>user\n"
        #         prompt_end = "<end_of_turn>"
        self.dataset = pd.read_csv(dataset_name)
        self.tokenizer = tokenizer

        self.language_map = {
            "en": "eng_Latn",
            "zh-cn": "zho_Hant",
            "ru": "rus_Cyrl",
            "es": "spa_Latn",
            "hi": "hin_Deva",
            "jp": "jpn_Jpan",
        }

        # Initialize the LASER encoder
        self.encoder = LaserEncoderPipeline(lang=self.language_map[lang])
        self.encoder.encoder.use_cuda = False
        self.encoder.encoder.encoder.cpu()
        self.max_len = max_seq_length
        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = (
            f"{self.prompt_begin} <<SYS>>\\nProvide answers in Python.\\n<</SYS>>\\n\\n"
        )
        self.word_tokenizer = MultilingualTokenizer()

    def __len__(self):
        return len(self.dataset)

    def __getitem__(self, idx):
        item = self.dataset.iloc[idx]

        # Prepare the input text
        input_text = item["prompt"]

        # Tokenize the combined text
        input_ids1 = self.tokenizer(
            self.prompt_prefix,
            add_special_tokens=False,
        ).input_ids
        input_ids2 = self.tokenizer(
            self.prompt_end + "\\n",
            add_special_tokens=False,
        ).input_ids
        # Compute multi_embeds using the LASER encoder
        word_tokens = self.word_tokenizer.tokenize(input_text, language_code="en")

        multi_embeds = [self.encoder.encode_sentences([tok])[0] for tok in word_tokens]

        relevant_prompt_tokens = []
        for tok in word_tokens:
            input_ids = self.tokenizer(
                tok,
                add_special_tokens=False,
            ).input_ids
            # print(input_ids)
            tok_len = [len(t) for t in self.tokenizer.convert_ids_to_tokens(input_ids)]
            max_index = tok_len.index(max(tok_len))
            new_token_id = input_ids[max_index]
            relevant_prompt_tokens.append(new_token_id)

        return input_ids1, input_ids2, multi_embeds, relevant_prompt_tokens

    def collect_fn(self, data):
        all_multi_embeds = []
        all_relevant_prompt_tokens = []
        for instance in data:
            input_ids1, input_ids2, multi_embeds, relevant_prompt_tokens = instance
            all_multi_embeds.append(multi_embeds)
            all_relevant_prompt_tokens.append(relevant_prompt_tokens)
        return {
            "input_ids1": input_ids1,
            "input_ids2": input_ids2,
            "multi_embeds": all_multi_embeds,
            "prompt_token_ids": all_relevant_prompt_tokens,
        }
