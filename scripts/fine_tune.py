import torch

from transformers import AutoTokenizer, Trainer, TrainingArguments
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training
from datasets import load_dataset
from torch.utils.data import DataLoader
from transformers import DataCollatorForLanguageModeling
from model import MultilingualForCausalLM
from datautils import MultilingualMBPPDataset
from args import get_args_for_fine_tuning

# Load tokenizer
def main(args):
    model_name = "gpt2"
    tokenizer = AutoTokenizer.from_pretrained(model_name)

    # Load dataset (assuming you already have the HuggingfaceDataset class defined)
    train_dataset = MultilingualMBPPDataset(split="train", tokenizer=tokenizer, lang="eng_Latn")
    val_dataset = MultilingualMBPPDataset(split="validation", tokenizer=tokenizer, lang="eng_Latn")

    # Define data collator for language modeling
    data_collator = DataCollatorForLanguageModeling(tokenizer=tokenizer, mlm=False)

    # Load base model and apply LoRA using PEFT
    model = MultilingualForCausalLM.from_pretrained(model_name, encoder_hidden_dim=1024)

    # Prepare the model for LoRA fine-tuning
    model = prepare_model_for_kbit_training(model)

    # Define LoRA configuration
    lora_config = LoraConfig(
        r=8,                # Rank of LoRA
        lora_alpha=32,      # LoRA alpha
        target_modules=["c_attn", "c_proj"],  # Targeting key layers in GPT-2 (adjust as needed)
        lora_dropout=0.1,   # LoRA dropout
    )

    # Apply LoRA to the model
    model = get_peft_model(model, lora_config)
    
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
        fp16=args.fp16,  # Use mixed precision training
    )
    # Initialize Trainer
    trainer = Trainer(
        model=model,
        args=training_args,
        train_dataset=train_dataset,
        eval_dataset=val_dataset,
        data_collator=data_collator,
    )

    # Start fine-tuning
    trainer.train()

if __name__ == "__main__":
    args = get_args_for_fine_tuning()
    main(args)