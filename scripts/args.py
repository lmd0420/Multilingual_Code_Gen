import argparse

def get_args_for_fine_tuning():
    """
    Parses command-line arguments and returns them as an argparse.Namespace object.
    
    Returns:
        argparse.Namespace: Parsed command-line arguments.
    """
    parser = argparse.ArgumentParser(description="Fine-tuning arguments")
    
    # Add command-line arguments
    parser.add_argument('--model_name', type=str, required=True, help='The name of the model to be fine-tuned.')
    parser.add_argument('--output_dir', type=str, required=True, help='Directory for saving model checkpoints and logs.')

    # TrainingArguments parameters
    parser.add_argument('--num_train_epochs', type=int, default=3, help='Number of training epochs.')
    parser.add_argument('--per_device_train_batch_size', type=int, default=4, help='Batch size for training.')
    parser.add_argument('--per_device_eval_batch_size', type=int, default=4, help='Batch size for evaluation.')
    parser.add_argument('--save_steps', type=int, default=1000, help='Number of steps between checkpoints.')
    parser.add_argument('--save_total_limit', type=int, default=2, help='Limit on the total number of checkpoints.')
    parser.add_argument('--evaluation_strategy', type=str, default='steps', choices=['no', 'epoch', 'steps'], help='Evaluation strategy to use.')
    parser.add_argument('--eval_steps', type=int, default=500, help='Number of steps between evaluations.')
    parser.add_argument('--logging_steps', type=int, default=100, help='Number of steps between logging.')
    parser.add_argument('--learning_rate', type=float, default=5e-5, help='Learning rate.')
    parser.add_argument('--warmup_steps', type=int, default=500, help='Number of warmup steps.')
    parser.add_argument('--weight_decay', type=float, default=0.01, help='Weight decay.')
    parser.add_argument('--fp16', type=bool, default=True, help='Use mixed precision training.')

    # Parse arguments
    args = parser.parse_args()

    return args

def get_args_for_inference():
    """
    Parses command-line arguments for the inference pipeline.

    Returns:
        argparse.Namespace: Parsed command-line arguments.
    """
    parser = argparse.ArgumentParser(description="Inference pipeline arguments")

    # Required arguments
    parser.add_argument('--model_path', type=str, required=True, help='Path to the trained model directory.')
    parser.add_argument('--csv_file', type=str, required=True, help='Path to the input CSV file.')

    # Optional arguments
    parser.add_argument('--tokenizer_name', type=str, default="gpt2", help='Name of the tokenizer to use. Default is "gpt2".')
    parser.add_argument('--start_symbol', type=str, default="<s>", help='Start symbol to prepend to the input text. Default is "<s>".')
    parser.add_argument('--end_symbol', type=str, default="</s>", help='End symbol to append to the input text. Default is "</s>".')
    parser.add_argument('--lang', type=str, default="eng_Latn", help='Language code for the LASER encoder. Default is "eng_Latn".')
    parser.add_argument('--dest', type=str, default="./output_directory", help='Destination directory for the output CSV file. Default is "./output_directory".')

    # Parse arguments
    args = parser.parse_args()

    return args
