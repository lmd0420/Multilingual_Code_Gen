import os
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
import pandas as pd
from laser_encoders import LaserEncoderPipeline
from model import MultilingualForCausalLM
from args import get_args_for_inference

class InferencePipeline:
    def __init__(self, model_path: str, tokenizer_name: str, start_symbol: str, end_symbol: str, lang: str = "eng_Latn"):
        """
        Initializes the inference pipeline.

        Args:
            model_path (str): Path to the trained model directory.
            tokenizer_name (str): Name of the tokenizer to use.
            start_symbol (str): Symbol to prepend to the input text.
            end_symbol (str): Symbol to append to the input text.
            lang (str): Language code for the LASER encoder. Default is "eng_Latn".
        """
        self.tokenizer = AutoTokenizer.from_pretrained(tokenizer_name)
        self.model = MultilingualForCausalLM.from_pretrained(model_path, encoder_hidden_dim=1024)
        self.start_symbol = start_symbol
        self.end_symbol = end_symbol
        self.encoder = LaserEncoderPipeline(lang=lang)

    def infer(self, input_text: str):
        """
        Runs inference on the input text.

        Args:
            input_text (str): The input text to generate predictions for.

        Returns:
            str: The generated text from the model.
        """
        # Process the input text
        processed_text = f"{self.start_symbol} {input_text} {self.end_symbol}"

        # Tokenize the input text
        tokenized_input = self.tokenizer(
            processed_text,
            padding='max_length',
            truncation=True,
            return_tensors='pt'
        )

        input_ids = tokenized_input['input_ids']
        attention_mask = tokenized_input['attention_mask']

        # Generate LASER embeddings
        multi_embeds = self.encoder.encode_sentences([input_text])
        multi_embeds = torch.tensor(multi_embeds)

        # Adjust attention mask to accommodate the multi_embeds
        attention_mask = torch.cat([attention_mask, torch.ones((attention_mask.size(0), multi_embeds.size(1)), dtype=torch.long)], dim=1)

        # Run the model's forward pass with input embeddings
        with torch.no_grad():
            outputs = self.model(
                input_ids=input_ids,
                attention_mask=attention_mask,
                multi_embeds=multi_embeds
            )
        
        # Generate text from the model's output
        generated_ids = self.model.generate(
            inputs_embeds=outputs['inputs_embeds'],
            attention_mask=attention_mask,
            max_length=50
        )

        # Decode the generated IDs back to text
        generated_text = self.tokenizer.decode(generated_ids[0], skip_special_tokens=True)
        
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
        df['generated_text'] = df['text'].apply(self.infer)

        # Create the output file path
        base_name = os.path.basename(csv_file).replace(".csv", "_predicted.csv")
        output_file = os.path.join(dest, base_name)

        # Save the updated DataFrame to the new CSV
        df.to_csv(output_file, index=False)

        print(f"Predictions saved to {output_file}")

def main():
    args = get_args_for_inference()
    pipeline = InferencePipeline(
        model_path=args.model_path,
        tokenizer_name=args.tokenizer_name,
        start_symbol=args.start_symbol,
        end_symbol=args.end_symbol,
        lang=args.lang
    )

    pipeline.run_inference_and_save(csv_file=args.csv_file, dest=args.dest)
