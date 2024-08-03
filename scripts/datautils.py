# Data Loaders etc

import os
import torch
import logging
from PIL import Image
from torch.utils.data import Dataset
from transformers import AutoTokenizer, AutoProcessor
from constants import label_map

logger = logging.getLogger(__name__)


class EEGDataset:

    # Constructor
    def __init__(self, args, fine_tuning=False):
        self.args = args
        # Load EEG signals
        loaded = torch.load(args.eeg_dataset)
        if args.subject != 0:
            self.data = [
                loaded["dataset"][i]
                for i in range(len(loaded["dataset"]))
                if loaded["dataset"][i]["subject"] == args.subject
            ]
        else:
            self.data = loaded["dataset"]
        self.labels = loaded["labels"]
        self.images = loaded["images"]

        # Compute size
        self.size = len(self.data)
        self.image_dir = args.image_dir

        # Initialize image processor
        self.processor = AutoProcessor.from_pretrained(args.clip_model)
        self.fine_tuning = fine_tuning

    # Get size
    def __len__(self):
        return self.size

    # Get item
    def __getitem__(self, i):
        # Process EEG
        eeg = self.data[i]["eeg"].float().t()
        eeg = eeg[self.args.time_low : self.args.time_high, :]
        eeg = eeg.t()
        eeg = eeg.view(1, 128, self.args.time_high - self.args.time_low)
        label = self.data[i]["label"]
        image_name = self.images[self.data[i]["image"]]
        image_path = os.path.join(
            self.image_dir, image_name.split("_")[0], image_name + "_sketch.JPEG"
        )
        image_raw = Image.open(image_path).convert("RGB")

        image_raw = self.processor(images=image_raw, return_tensors="pt", padding=True)
        image_raw["pixel_values"] = image_raw["pixel_values"].squeeze(0)

        if self.fine_tuning:
            label_string = label_map[image_name.split("_")[0]]
            return image_raw, eeg, label_string
        else:
            return image_raw, eeg, label


class Splitter:

    def __init__(
        self, dataset, split_path, split_num=0, split_name="train", fine_tuning=False
    ):
        # Set EEG dataset
        self.dataset = dataset
        # Load split
        loaded = torch.load(split_path)
        self.split_idx = loaded["splits"][split_num][split_name]
        # Filter data
        self.split_idx = [
            i
            for i in self.split_idx
            if 450 <= self.dataset.data[i]["eeg"].size(1) <= 600
        ]
        # Compute size
        self.size = len(self.split_idx)
        self.fine_tuning = fine_tuning
        print(f"Total examples in the spllit{split_name} {self.size}")

    # Get size
    def __len__(self):
        return self.size

    # Get item
    def __getitem__(self, i):
        # Get sample from dataset
        if self.fine_tuning:
            img_data, eeg, label_string = self.dataset[self.split_idx[i]]
            return img_data, eeg, label_string
        else:
            img_data, eeg, label = self.dataset[self.split_idx[i]]
            return img_data, eeg, label


class EEGFineTuningDataset:

    # Constructor
    def __init__(
        self,
        args,
        tokenizer_path=None,
        prompt_begin=" [INST]",
        prompt_end="[/INST] ",
        max_len=512,
    ):
        if "llama" in tokenizer_path.lower():
            prompt_begin = " <|start_header_id|>"
            prompt_end = "<|end_header_id|> "
        elif "phi" in tokenizer_path.lower():
            prompt_begin = " <|user|>"
            prompt_end = "<|assistant|> "
        self.args = args
        self.tokenizer = AutoTokenizer.from_pretrained(tokenizer_path)
        self.tokenizer.pad_token_id = self.tokenizer.eos_token_id
        self.tokenizer.padding_side = "left"
        self.max_len = max_len
        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = f"{self.prompt_begin} You are an AI assistant who is good at describing images. Describe this image of "
        # Load EEG signals
        loaded = torch.load(args.eeg_dataset)
        if args.subject != 0:
            self.data = [
                loaded["dataset"][i]
                for i in range(len(loaded["dataset"]))
                if loaded["dataset"][i]["subject"] == args.subject
            ]
        else:
            self.data = loaded["dataset"]
        self.labels = loaded["labels"]
        self.images = loaded["images"]

        # Compute size
        self.size = len(self.data)
        self.image_dir = args.image_dir
        self.id2label = {}

        # Initialize image processor
        self.processor = AutoProcessor.from_pretrained(args.clip_model)

    # Get size
    def __len__(self):
        return self.size

    # Get item
    def __getitem__(self, i):
        # Process EEG
        eeg = self.data[i]["eeg"].float().t()
        eeg = eeg[self.args.time_low : self.args.time_high, :]
        eeg = eeg.t()
        eeg = eeg.view(1, 128, self.args.time_high - self.args.time_low)
        label = self.data[i]["label"]
        # print(label)
        image_name = self.images[self.data[i]["image"]]
        image_path = os.path.join(
            self.image_dir, image_name.split("_")[0], image_name + "_sketch.JPEG"
        )
        label_string = label_map[image_name.split("_")[0]]
        self.id2label[label] = label_string
        caption_path = os.path.join(
            self.image_dir, image_name.split("_")[0], image_name + "_caption.txt"
        )
        with open(caption_path) as f:
            content = f.readlines()[0].strip()
            content = content.replace("<s>", "")
            content = content.replace("</s>", "")
            caption_raw = label_string.strip() + " " + self.prompt_end + content.strip()
            # print(self.prompt_prefix)
            # print(caption_raw)
        input_ids1 = self.tokenizer(
            self.prompt_prefix,
            padding="max_length",
            add_special_tokens=False,
            max_length=self.max_len,
            truncation=True,
            return_tensors="pt",
        ).input_ids
        input_ids2 = self.tokenizer(
            caption_raw.strip(),
            padding="max_length",
            add_special_tokens=False,
            max_length=self.max_len,
            truncation=True,
            return_tensors="pt",
        ).input_ids

        input_ids1 = input_ids1.squeeze(0)
        input_ids2 = input_ids2.squeeze(0)

        image_raw = Image.open(image_path).convert("RGB")

        image_raw = self.processor(images=image_raw, return_tensors="pt", padding=True)
        image_raw["pixel_values"] = image_raw["pixel_values"].squeeze(0)
        return image_raw, eeg, input_ids1, input_ids2


class SplitterFineTuning:

    def __init__(self, dataset, split_path, split_num=0, split_name="train"):
        # f.dataset = dataset
        self.dataset = dataset
        # Load split
        loaded = torch.load(split_path)
        self.split_idx = loaded["splits"][split_num][split_name]
        # Filter data
        self.split_idx = [
            i
            for i in self.split_idx
            if 450 <= self.dataset.data[i]["eeg"].size(1) <= 600
        ]
        # Compute size
        self.size = len(self.split_idx)
        print(f"Total examples in the spllit{split_name} {self.size}")

    # Get size
    def __len__(self):
        return self.size

    # Get item
    def __getitem__(self, i):
        # Get sample from dataset
        image_raw, eeg, input_ids1, input_ids2 = self.dataset[self.split_idx[i]]
        return image_raw, eeg, input_ids1, input_ids2


class EEGInferenceDataset:

    # Constructor
    def __init__(self, args):
        self.args = args
        # Load EEG signals
        loaded = torch.load(args.eeg_dataset)
        if args.subject != 0:
            self.data = [
                loaded["dataset"][i]
                for i in range(len(loaded["dataset"]))
                if loaded["dataset"][i]["subject"] == args.subject
            ]
        else:
            self.data = loaded["dataset"]
        self.labels = loaded["labels"]
        self.images = loaded["images"]

        # Compute size
        self.size = len(self.data)
        self.image_dir = args.image_dir

    # Get size
    def __len__(self):
        return self.size

    # Get item
    def __getitem__(self, i):
        # Process EEG
        eeg = self.data[i]["eeg"].float().t()
        eeg = eeg[self.args.time_low : self.args.time_high, :]
        eeg = eeg.t()
        eeg = eeg.view(1, 128, self.args.time_high - self.args.time_low)
        image_name = self.images[self.data[i]["image"]]
        image_path = os.path.join(
            self.image_dir, image_name.split("_")[0], image_name + ".JPEG"
        )

        # label_strings are only returned as references, not used in predictions
        label_string = label_map[image_name.split("_")[0]]

        caption_path = os.path.join(
            self.image_dir, image_name.split("_")[0], image_name + "_caption.txt"
        )
        # captions are only returned as references, not used in predictions
        with open(caption_path) as f:
            caption_raw = f.readlines()[0].strip()

        return eeg, label_string, caption_raw, image_path


class SplitterInference:

    def __init__(self, dataset, split_path, split_num=0, split_name="train"):
        # f.dataset = dataset
        self.dataset = dataset
        # Load split
        loaded = torch.load(split_path)
        self.split_idx = loaded["splits"][split_num][split_name]
        # Filter data
        self.split_idx = [
            i
            for i in self.split_idx
            if 450 <= self.dataset.data[i]["eeg"].size(1) <= 600
        ]
        # Compute size
        self.size = len(self.split_idx)
        print(f"Total examples in the spllit{split_name} {self.size}")

    # Get size
    def __len__(self):
        return self.size

    # Get item
    def __getitem__(self, i):
        # Get sample from dataset
        eeg, label_string, expected_caption, image_path = self.dataset[
            self.split_idx[i]
        ]
        return eeg, label_string, expected_caption, image_path

