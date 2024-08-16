# sample command: python inference.py --model_path results_codellama7b-instruct-hf --csv_file ../Repo/Data/test.es.sanitized.csv --dest tmp.csv

import os
import torch
import nltk
import pandas as pd
import jieba  # For Chinese tokenization
from transformers import AutoTokenizer, AutoModelForCausalLM, BitsAndBytesConfig
from args import get_args_for_inference
from tqdm import tqdm
from laser_encoders import LaserEncoderPipeline
from nltk.tokenize import word_tokenize
from janome.tokenizer import Tokenizer as JanomeTokenizer  # For Japanese tokenization
from model import MultilingualProjector
import torch.nn.functional as F

# Download necessary NLTK resources
nltk.download("punkt")


class MultilingualTokenizer:
    def __init__(self):
        # Define the supported languages
        self.supported_languages = ["en", "ru", "es", "hi", "zh-cn", "ja"]
        self.japanese_tokenizer = JanomeTokenizer()  # Initialize the Japanese tokenizer

    def tokenize(self, text, language_code):
        if language_code not in self.supported_languages:
            raise ValueError(f"Unsupported language code: {language_code}")

        if language_code == "zh-cn":
            # Use jieba for Chinese tokenization
            tokens = list(jieba.cut(text))
        elif language_code == "ja":
            # Use Janome for Japanese tokenization
            tokens = [token.surface for token in self.japanese_tokenizer.tokenize(text)]
        else:
            # For other languages supported by NLTK's punkt tokenizer
            tokens = word_tokenize(text)

        return tokens


tqdm.pandas()


class InferencePipeline:
    def __init__(
        self,
        model_path: str,
        base_model_name: str,
        prompt_begin=" [INST]",
        prompt_end="[/INST] ",
        max_seq_length=250,
        lang="en",
        max_inp_len=150,
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
        self.projector = MultilingualProjector.from_pretrained(model_path)

        self.prompt_begin = prompt_begin
        if "llama" in base_model_name.lower():
            self.prompt_end = prompt_end
            self.prompt_prefix = f"{self.prompt_begin} <<SYS>>\\nProvide answers in Python.\\n<</SYS>>\\n\\n"
            self.is_llama = True
        else:
            self.prompt_prefix = (
                f"{self.tokenizer.bos_token} Provide answers in Python.\\n\\n"
            )
            self.prompt_end = self.tokenizer.eos_token
            self.is_llama = False

        self.max_len = max_seq_length
        self.word_tokenizer = MultilingualTokenizer()

        self.encoder = LaserEncoderPipeline(laser="laser2")
        self.encoder.encoder.use_cuda = False
        self.encoder.encoder.encoder.cpu()
        self.device = "cuda" if torch.cuda.is_available() else "cpu"
        self.projector.to(self.device)
        self.token_embeddings = self.model.get_input_embeddings().weight
        self.lang = lang
        self.pad_embeddings = self.model.model.embed_tokens(
            torch.tensor(
                [self.tokenizer.pad_token_id], dtype=torch.long, device=self.device
            )
        )
        self.max_inp_len = max_inp_len

    def find_closest_embeddings(self, embedding_tensor, token_embeddings):
        # Normalize embeddings
        embedding_tensor = F.normalize(embedding_tensor, p=2, dim=-1)
        token_embeddings = F.normalize(token_embeddings, p=2, dim=-1)

        # Compute cosine similarity
        similarities = torch.matmul(embedding_tensor, token_embeddings.T)

        # Find the indices of the closest embeddings
        closest_indices = similarities.argmax(dim=-1)

        # Gather the closest embeddings
        batch_size, seq_len = embedding_tensor.shape[:2]
        closest_embeddings = torch.index_select(
            token_embeddings, 0, closest_indices.view(-1)
        )
        closest_embeddings = closest_embeddings.view(batch_size, seq_len, -1)

        return closest_indices, closest_embeddings

    def batch_infer(self, batch_texts):
        final_outputs = []
        all_embeddings = []
        for input_text in batch_texts:
            print(input_text)
            # Tokenize the combined text
            input_ids1 = self.tokenizer(
                self.prompt_prefix + input_text + "Additional Keywords:",
                add_special_tokens=False,
            ).input_ids
            input_ids2 = self.tokenizer(
                self.prompt_end,
                add_special_tokens=False,
            ).input_ids
            # Compute multi_embeds using the LASER encoder
            word_tokens = self.word_tokenizer.tokenize(
                input_text, language_code=self.lang
            )
            # print(word_tokens)

            multi_embeds = [
                self.encoder.encode_sentences([tok])[0] for tok in word_tokens
            ]

            input_ids1_tensor = torch.tensor(
                input_ids1, dtype=torch.long, device=self.device
            ).unsqueeze(0)
            input_ids2_tensor = torch.tensor(
                input_ids2, dtype=torch.long, device=self.device
            ).unsqueeze(0)

            input_ids1_embeddings = self.model.model.embed_tokens(input_ids1_tensor)
            input_ids2_embeddings = self.model.model.embed_tokens(input_ids2_tensor)

            prompt_embeddings = torch.tensor(
                multi_embeds, device=self.device
            ).unsqueeze(0)
            prompt_embeddings = self.projector(prompt_embeddings)
            prompt_embeddings = prompt_embeddings.to(input_ids1_embeddings.dtype)
            if self.is_llama:
                closest_indices, prompt_embeddings = self.find_closest_embeddings(
                    prompt_embeddings, self.token_embeddings
                )
                # print("ENG tokens", self.tokenizer.decode(closest_indices[0]))

            final_embeddings = torch.cat(
                [input_ids1_embeddings, prompt_embeddings, input_ids2_embeddings], dim=1
            )
            print(final_embeddings)
            padded_embeddings = self.pad_embeddings.repeat(1, self.max_inp_len, 1)
            padded_embeddings[:, -final_embeddings.shape[1] :, :] = final_embeddings
            all_embeddings.append(padded_embeddings)
            print(padded_embeddings)
        all_embeddings = torch.cat(all_embeddings, dim=0)
        # print(all_embeddings.shape)
        generated_ids = self.model.generate(
            inputs_embeds=all_embeddings,
            max_new_tokens=self.max_len,
            temperature=0.8,
        )
        # Decode the generated IDs back to text
        generated_texts = self.tokenizer.batch_decode(
            generated_ids, skip_special_tokens=True
        )
        print(generated_texts)
        return generated_texts

    def infer(self, input_text: str):
        """
        Runs inference on the input text.

        Args:
            input_text (str): The input text to generate predictions for.

        Returns:
            str: The generated text from the model.
        """
        # Process the input text
        input_text = input_text

        # Tokenize the combined text
        input_ids1 = self.tokenizer(
            self.prompt_prefix + input_text + "Additional Keywords:",
            add_special_tokens=False,
        ).input_ids
        input_ids2 = self.tokenizer(
            self.prompt_end,
            add_special_tokens=False,
        ).input_ids
        # Compute multi_embeds using the LASER encoder
        word_tokens = self.word_tokenizer.tokenize(input_text, language_code=self.lang)
        # print(word_tokens)

        multi_embeds = [self.encoder.encode_sentences([tok])[0] for tok in word_tokens]

        input_ids1_tensor = torch.tensor(
            input_ids1, dtype=torch.long, device=self.device
        ).unsqueeze(0)
        input_ids2_tensor = torch.tensor(
            input_ids2, dtype=torch.long, device=self.device
        ).unsqueeze(0)

        input_ids1_embeddings = self.model.model.embed_tokens(input_ids1_tensor)
        input_ids2_embeddings = self.model.model.embed_tokens(input_ids2_tensor)

        prompt_embeddings = torch.tensor(multi_embeds, device=self.device).unsqueeze(0)
        prompt_embeddings = self.projector(prompt_embeddings)
        prompt_embeddings = prompt_embeddings.to(input_ids1_embeddings.dtype)
        if self.is_llama:
            closest_indices, prompt_embeddings = self.find_closest_embeddings(
                prompt_embeddings, self.token_embeddings
            )
            # print(
            #     "ENG tokens",
            #     closest_indices,
            #     self.tokenizer.batch_decode(closest_indices[0]),
            # )

        final_embeddings = torch.cat(
            [input_ids1_embeddings, prompt_embeddings, input_ids2_embeddings], dim=1
        )
        # final_embeddings = torch.cat(
        #     [input_ids1_embeddings, input_ids2_embeddings], dim=1
        # )

        generated_ids = self.model.generate(
            inputs_embeds=final_embeddings,
            max_new_tokens=self.max_len,
            temperature=0.8,
        )
        # Decode the generated IDs back to text
        generated_text = self.tokenizer.decode(
            generated_ids[0], skip_special_tokens=True
        )
        # print("INPUT", input_text)
        # print("GENERATED", generated_text)
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

    def run_batch_inference_and_save(self, csv_file: str, dest: str, batch_size=16):
        """
        Runs inference on all texts in the CSV and saves the results to a new CSV file.

        Args:
            csv_file (str): Path to the input CSV file.
            dest (str): Destination directory where the output CSV will be saved.
        """
        # Load the CSV
        df = pd.read_csv(csv_file)
        all_results = []

        column_values = df["prompt"].to_list()

        # Loop through the column values in steps of batch_size
        for i in tqdm(range(0, len(column_values), batch_size)):
            # Yield each batch as a list of values
            print(column_values[i : i + batch_size])
            result = self.batch_infer(column_values[i : i + batch_size])
            all_results += result

        # Run inference on each row and store the results
        df["results"] = pd.Series(all_results)

        # Create the output file path
        base_name = os.path.basename(csv_file).replace(".csv", "_predicted.csv")
        output_file = os.path.join(dest, base_name)

        # Save the updated DataFrame to the new CSV
        df.to_csv(output_file, index=False)

        print(f"Predictions saved to {output_file}")


def main():
    args = get_args_for_inference()
    pipeline = InferencePipeline(
        model_path=args.model_path, base_model_name=args.base_model_name, lang=args.lang
    )

    pipeline.run_inference_and_save(csv_file=args.csv_file, dest=args.dest)


if __name__ == "__main__":
    main()
