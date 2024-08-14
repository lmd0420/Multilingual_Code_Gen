import argparse


def get_args_for_proj_training():
    # Define options
    parser = argparse.ArgumentParser(description="Template")

    parser.add_argument(
        "--output",
        type=str,
        required=True,
        help="Directory to save the model checkpoints and logs.",
    )

    parser.add_argument(
        "--model_name",
        type=str,
        required=True,
        help="Directory to save the model checkpoints and logs.",
    )
    parser.add_argument("--save_every", type=int, default=5)
    # train args

    parser.add_argument(
        "--batch_size", type=int, default=8, help="Batch size for training and eval."
    )
    parser.add_argument(
        "--num_epochs", type=int, default=100, help="Number of epochs for training."
    )
    parser.add_argument(
        "--save_steps",
        default=5000,
        type=int,
        help="Number of steps between saving checkpoints.",
    )
    parser.add_argument(
        "--logging_steps", default=30, type=int, help="Number of steps between logging."
    )
    parser.add_argument(
        "--learning_rate",
        default=2e-4,
        type=float,
        help="The initial learning rate for Adam.",
    )
    parser.add_argument(
        "--optim",
        default="adamw_hf",
        type=str,
        help="Optimizer to use for training.",
    )
    parser.add_argument(
        "--weight_decay", default=0.001, type=float, help="Weight decay to apply."
    )
    parser.add_argument(
        "--max_grad_norm",
        default=0.3,
        type=float,
        help="Max gradient norm to clip gradients.",
    )
    parser.add_argument(
        "--max_steps",
        default=-1,
        type=int,
        help="If > 0: set total number of training steps to perform.",
    )
    parser.add_argument(
        "--warmup_ratio",
        default=0.3,
        type=float,
        help="Ratio of total steps to perform linear learning rate warmup.",
    )
    parser.add_argument(
        "--group_by_length",
        action="store_true",
        help="Whether to group samples of roughly the same length together.",
    )
    parser.add_argument(
        "--lr_scheduler_type",
        default="constant",
        type=str,
        help="Type of learning rate scheduler.",
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
        "--lang",
        type=str,
        required=True,
        help="Path to the trained model directory.",
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
