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
            base_model_name, trust_remote_code=True
        )
        self.tokenizer.pad_token = self.tokenizer.eos_token
        self.tokenizer.padding_side = "right"
        bnb_config = BitsAndBytesConfig(
            load_in_4bit=True,
            bnb_4bit_quant_type="nf4",
            bnb_4bit_compute_dtype="float16",
            bnb_4bit_use_double_quant=False,
        )

        self.model = AutoModelForCausalLM.from_pretrained(
            base_model_name, quantization_config=bnb_config
        )

        # self.model = PeftModel.from_pretrained(self.base_model, model_path)
        # self.model = self.model.merge_and_unload()

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
        input_text = self.prompt_prefix + input_text.strip() + self.prompt_end
        tokens = input_text.split()
        embeddings = []
        for tok in tokens:
            input_ids = self.tokenizer(
                tok,
                add_special_tokens=False,
                truncation=True,
                return_tensors="pt",
            ).input_ids
            # print(input_ids)
            tok_len = [
                len(t) for t in self.tokenizer.convert_ids_to_tokens(input_ids[0])
            ]
            max_index = tok_len.index(max(tok_len))

            # print(input_ids)
            # print(input_ids.shape)
            emb = self.model.model.embed_tokens(input_ids)
            # print(max_index)
            pooled_emb = emb[:, max_index, :]  # .sum(dim=1)
            # print(pooled_emb.shape)
            embeddings.append(pooled_emb)

        # embeddings = torch.cat(embeddings, dim=1)
        embeddings = torch.stack(embeddings)
        embeddings = embeddings.transpose(0, 1)

        # input_ids = self.tokenizer(
        #     input_text,
        #     add_special_tokens=False,
        #     truncation=True,
        #     return_tensors="pt",
        # ).input_ids
        # print(self.tokenizer.tokenize(input_text))
        # embeddings = self.model.model.embed_tokens(input_ids)

        # Generate text from the model's output
        generated_ids = self.model.generate(
            inputs_embeds=embeddings,
            max_new_tokens=self.max_len,
            temperature=0.8,
        )
        # Decode the generated IDs back to text
        generated_text = self.tokenizer.decode(
            generated_ids[0], skip_special_tokens=True
        )
        # print(input_text)
        # print(generated_text)
        # print("+=============================+")
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
