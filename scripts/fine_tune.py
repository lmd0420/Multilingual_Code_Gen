# sample command : python fine_tune.py --model_name mistralai/Mistral-7B-Instruct-v0.3 --output_dir results_mistral7b-it

import torch

from transformers import AutoTokenizer, Trainer, TrainingArguments
from datasets import load_dataset
from torch.utils.data import DataLoader
from transformers import DataCollatorForLanguageModeling, BitsAndBytesConfig
from model import MultilingualForCausalLM
from datautils import MultilingualMBPPDataset
from args import get_args_for_fine_tuning


# Load tokenizer
def main(args):
    tokenizer = AutoTokenizer.from_pretrained(args.model_name, trust_remote_code=True)
    tokenizer.pad_token = tokenizer.eos_token
    tokenizer.padding_side = "right"

    # Load dataset (assuming you already have the HuggingfaceDataset class defined)
    train_dataset = MultilingualMBPPDataset(split="train", tokenizer=tokenizer)
    val_dataset = MultilingualMBPPDataset(split="validation", tokenizer=tokenizer)

    # Define data collator for language modeling

    bnb_config = BitsAndBytesConfig(
        load_in_4bit=True,
        bnb_4bit_quant_type="nf4",
        bnb_4bit_compute_dtype="float16",
        bnb_4bit_use_double_quant=False,
    )

    model = MultilingualForCausalLM.from_pretrained(
        args.model_name,
        is_training=True,
        use_lora=False,
        freeze_llm_params=True,
        quantization_config=bnb_config,
    )

    training_args = TrainingArguments(
        output_dir=args.output_dir,  # Directory for saving model checkpoints and logs
        overwrite_output_dir=True,
        num_train_epochs=args.num_train_epochs,  # Number of training epochs
        per_device_train_batch_size=args.per_device_train_batch_size,  # Batch size for training
        per_device_eval_batch_size=args.per_device_eval_batch_size,  # Batch size for evaluation
        save_steps=args.save_steps,  # Number of steps between checkpoints
        save_total_limit=args.save_total_limit,  # Limit on the total number of checkpoints
        evaluation_strategy=args.evaluation_strategy,  # Evaluation strategy to use
        eval_steps=args.eval_steps,  # Number of steps between evaluations
        logging_steps=args.logging_steps,  # Number of steps between logging
        learning_rate=args.learning_rate,  # Learning rate
        warmup_steps=args.warmup_steps,  # Number of warmup steps
        weight_decay=args.weight_decay,  # Weight decay
        warmup_ratio=args.warmup_ratio,
        fp16=args.fp16,  # Use mixed precision training
        bf16=args.bf16,
        gradient_accumulation_steps=args.gradient_accumulation_steps,
        lr_scheduler_type="cosine",
        max_grad_norm=args.max_grad_norm,
        optim=args.optim,
        gradient_checkpointing=True,  # doesnt work well with lora
        report_to="tensorboard",
    )
    # Initialize Trainer
    trainer = Trainer(
        model=model,
        args=training_args,
        train_dataset=train_dataset,
        eval_dataset=val_dataset,
    )

    # Start fine-tuning
    trainer.train()
    trainer.model.save_pretrained(args.output_dir)
    tokenizer.save_pretrained(args.output_dir)


if __name__ == "__main__":
    args = get_args_for_fine_tuning()
    main(args)
