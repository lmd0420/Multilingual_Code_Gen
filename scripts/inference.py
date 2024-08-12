# sample command: python inference.py --model_path results_codellama7b-instruct-hf --csv_file ../Repo/Data/test.es.sanitized.csv --dest tmp.csv

import os
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
import pandas as pd
from laser_encoders import LaserEncoderPipeline
from model import MultilingualForCausalLM
from args import get_args_for_inference
from peft import LoraConfig, PeftModel
from laser_encoders import LaserEncoderPipeline
from tqdm import tqdm

tqdm.pandas()


class InferencePipeline:
    def __init__(
        self,
        model_path: str,
        prompt_begin=" [INST]",
        prompt_end="[/INST] ",
        max_seq_length=250,
    ):
        """
        Initializes the inference pipeline.

        Args:
            model_path (str): Path to the trained model directory.
            tokenizer_name (str): Name of the tokenizer to use.
            start_symbol (str): Symbol to prepend to the input text.
            end_symbol (str): Symbol to append to the input text.
            lang (str): Language code for the LASER encoder. Default is "eng_Latn".
        """
        self.tokenizer = AutoTokenizer.from_pretrained(
            model_path, trust_remote_code=True
        )
        self.tokenizer.pad_token = self.tokenizer.eos_token
        self.tokenizer.padding_side = "right"
        self.model = MultilingualForCausalLM.from_pretrained(
            model_path, use_lora=False, is_training=False
        )

        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = (
            f"{self.prompt_begin} <<SYS>>\\nProvide answers in Python.\\n<</SYS>>\\n\\n"
        )
        self.max_len = max_seq_length
        self.encoder = LaserEncoderPipeline(laser="laser2")
        self.encoder.encoder.use_cuda = False
        self.encoder.encoder.encoder.cpu()

    def infer(self, input_text: str):
        """
        Runs inference on the input text.

        Args:
            input_text (str): The input text to generate predictions for.

        Returns:
            str: The generated text from the model.
        """
        # Process the input text
        input_ids1 = self.tokenizer(
            self.prompt_prefix + input_text.strip(),
            add_special_tokens=False,
            truncation=True,
            return_tensors="pt",
        ).input_ids
        input_ids2 = self.tokenizer(
            self.prompt_end,
            add_special_tokens=False,
            truncation=True,
            return_tensors="pt",
        ).input_ids
        # print(input_ids1)
        # Compute multi_embeds using the LASER encoder
        multi_embeds = self.encoder.encode_sentences([input_text])
        multi_embeds = torch.tensor(multi_embeds)

        # Generate text from the model's output
        generated_ids = self.model.generate(
            input_ids1=input_ids1,
            input_ids2=input_ids2,
            multi_embeds=multi_embeds,
            max_new_tokens=self.max_len,
            temperature=0.8,
        )
        # print(generated_ids)
        # Decode the generated IDs back to text
        generated_text = self.tokenizer.decode(
            generated_ids[0], skip_special_tokens=True
        )
        print(input_text)
        print(generated_text)
        print("+=============================+")
        return generated_text

    def run_inference_and_save(self, csv_file: str, dest: str):
        """
        Runs inference on all texts in the CSV and saves the results to a new CSV file.

        Args:
            csv_file (str): Path to the input CSV file.
            dest (str): Destination directory where the output CSV will be saved.
        """
        # Load the CSV
        df = pd.read_csv(csv_file)

        # Run inference on each row and store the results
        df["results"] = df["prompt"].progress_apply(self.infer)

        # Create the output file path
        base_name = os.path.basename(csv_file).replace(".csv", "_predicted.csv")
        output_file = os.path.join(dest, base_name)

        # Save the updated DataFrame to the new CSV
        df.to_csv(output_file, index=False)

        print(f"Predictions saved to {output_file}")


def main():
    args = get_args_for_inference()
    pipeline = InferencePipeline(model_path=args.model_path)

    pipeline.run_inference_and_save(csv_file=args.csv_file, dest=args.dest)


if __name__ == "__main__":
    main()
