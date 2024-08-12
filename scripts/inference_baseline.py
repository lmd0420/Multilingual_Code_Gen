# sample command: python inference.py --model_path results_codellama7b-instruct-hf --csv_file ../Repo/Data/test.es.sanitized.csv --dest tmp.csv

import os
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM, BitsAndBytesConfig
import pandas as pd
from args import get_args_for_inference
from peft import PeftModel
from tqdm import tqdm

tqdm.pandas()


class InferencePipeline:
    def __init__(
        self,
        model_path: str,
        base_model_name: str,
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
        bnb_config = BitsAndBytesConfig(
            load_in_4bit=True,
            bnb_4bit_quant_type="nf4",
            bnb_4bit_compute_dtype="float16",
            bnb_4bit_use_double_quant=False,
        )

        self.base_model = AutoModelForCausalLM.from_pretrained(
            base_model_name, quantization_config=bnb_config
        )

        self.model = PeftModel.from_pretrained(self.base_model, model_path)
        self.model = self.model.merge_and_unload()

        self.prompt_begin = prompt_begin
        self.prompt_end = prompt_end
        self.prompt_prefix = (
            f"{self.prompt_begin} <<SYS>>\\nProvide answers in Python.\\n<</SYS>>\\n\\n"
        )
        self.max_len = max_seq_length

    def infer(self, input_text: str):
        """
        Runs inference on the input text.

        Args:
            input_text (str): The input text to generate predictions for.

        Returns:
            str: The generated text from the model.
        """
        # Process the input text
        input_ids = self.tokenizer(
            self.prompt_prefix + input_text.strip() + self.prompt_end,
            padding="max_length",
            add_special_tokens=False,
            max_length=self.max_len,
            truncation=True,
            return_tensors="pt",
        ).input_ids

        # Generate text from the model's output
        generated_ids = self.model.generate(
            input_ids=input_ids,
            max_new_tokens=self.max_len,
            temperature=0.8,
        )
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
    pipeline = InferencePipeline(
        model_path=args.model_path, base_model_name=args.base_model_name
    )

    pipeline.run_inference_and_save(csv_file=args.csv_file, dest=args.dest)


if __name__ == "__main__":
    main()
