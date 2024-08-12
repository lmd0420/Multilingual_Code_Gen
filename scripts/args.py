import argparse


def get_args_for_fine_tuning():
    """
    Parses command-line arguments and returns them as an argparse.Namespace object.

    Returns:
        argparse.Namespace: Parsed command-line arguments.
    """
    parser = argparse.ArgumentParser(description="Fine-tuning arguments")

    # Add command-line arguments
    parser.add_argument(
        "--model_name",
        type=str,
        required=True,
        help="The name of the model to be fine-tuned.",
    )
    parser.add_argument(
        "--output_dir",
        type=str,
        required=True,
        help="Directory for saving model checkpoints and logs.",
    )

    # TrainingArguments parameters
    parser.add_argument(
        "--num_train_epochs", type=int, default=20, help="Number of training epochs."
    )
    parser.add_argument(
        "--per_device_train_batch_size",
        type=int,
        default=4,
        help="Batch size for training.",
    )
    parser.add_argument(
        "--per_device_eval_batch_size",
        type=int,
        default=4,
        help="Batch size for evaluation.",
    )
    parser.add_argument(
        "--save_steps",
        type=int,
        default=1000,
        help="Number of steps between checkpoints.",
    )
    parser.add_argument(
        "--save_total_limit",
        type=int,
        default=5,
        help="Limit on the total number of checkpoints.",
    )
    parser.add_argument(
        "--evaluation_strategy",
        type=str,
        default="steps",
        choices=["no", "epoch", "steps"],
        help="Evaluation strategy to use.",
    )
    parser.add_argument(
        "--eval_steps",
        type=int,
        default=10,
        help="Number of steps between evaluations.",
    )
    parser.add_argument(
        "--logging_steps",
        type=int,
        default=10,
        help="Number of steps between logging.",
    )
    parser.add_argument(
        "--learning_rate", type=float, default=2e-4, help="Learning rate."
    )
    parser.add_argument(
        "--warmup_steps", type=int, default=500, help="Number of warmup steps."
    )
    parser.add_argument(
        "--weight_decay", type=float, default=0.001, help="Weight decay."
    )
    parser.add_argument(
        "--fp16", type=bool, default=False, help="Use mixed precision training."
    )
    parser.add_argument(
        "--bf16", type=bool, default=True, help="Use mixed precision training."
    )
    parser.add_argument(
        "--gradient_accumulation_steps",
        default=1,
        type=int,
        help="Number of updates steps to accumulate before performing a backward/update pass.",
    )
    parser.add_argument(
        "--warmup_ratio",
        default=0.3,
        type=float,
        help="Ratio of total steps to perform linear learning rate warmup.",
    )
    parser.add_argument(
        "--max_grad_norm",
        default=0.3,
        type=float,
        help="Max gradient norm to clip gradients.",
    )
    parser.add_argument(
        "--optim",
        default="paged_adamw_32bit",
        type=str,
        help="Optimizer to use for training.",
    )

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
    parser.add_argument(
        "--model_path",
        type=str,
        required=True,
        help="Path to the trained model directory.",
    )
    # this is required only for baseline
    parser.add_argument(
        "--base_model_name",
        type=str,
        required=False,
        help="Name of the base model.",
    )
    parser.add_argument(
        "--csv_file", type=str, required=True, help="Path to the input CSV file."
    )

    parser.add_argument(
        "--dest",
        type=str,
        default="./output_directory",
        help='Destination directory for the output CSV file. Default is "./output_directory".',
    )

    # Parse arguments
    args = parser.parse_args()

    return args
