import torch
import json
import os
import torch.nn as nn
from transformers import AutoModelForCausalLM, AutoConfig, BitsAndBytesConfig
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training, PeftModel


IGNORE_INDEX = -100
ML_ENCODER_HIDDEN_DIM = 1024
ML_SEQ_LEN = 10


class MultilingualForCausalLM(nn.Module):
    def __init__(
        self,
        base_model,
        base_model_name,
        use_lora=True,
        is_training=False,
        freeze_llm_params=True,
        *model_args,
        **kwargs,
    ):
        super().__init__()
        self.base_model = base_model
        self.base_model_name = base_model_name
        self.hidden_size = base_model.config.hidden_size
        self.multi_embeds_proj = nn.Linear(
            ML_ENCODER_HIDDEN_DIM, self.hidden_size * ML_SEQ_LEN
        )
        self.padding_token_id = self.base_model.config.eos_token_id
        self.bos_token_id = self.base_model.config.bos_token_id
        self.gradient_checkpointing_enable = (
            self.base_model.gradient_checkpointing_enable
        )
        self.quantization_config = kwargs.get("quantization_config", None)
        self.use_lora = use_lora
        self.freeze_llm_params = freeze_llm_params

        if use_lora and is_training:
            lora_config = LoraConfig(
                r=64,  # Rank of LoRA
                lora_alpha=16,  # LoRA alpha
                lora_dropout=0.1,  # LoRA dropout
                bias="none",
                target_modules=[
                    "q_proj",
                    "k_proj",
                    "v_proj",
                    "o_proj",
                    "gate_proj",
                    "up_proj",
                    "down_proj",
                    "lm_head",
                    "linear",
                ],
            )

            # Apply LoRA to the model
            self.base_model = get_peft_model(self.base_model, lora_config)
            self.base_model.print_trainable_parameters()

            if freeze_llm_params:
                # Freeze all model parameters except the projection layer
                for param in self.base_model.parameters():
                    param.requires_grad = False

                for param in self.multi_embeds_proj.parameters():
                    param.requires_grad = True
            self.base_model.enable_input_require_grads()  # for gradient checkpointing

    @classmethod
    def from_pretrained(
        cls,
        pretrained_model_name_or_path,
        is_training=False,
        use_lora=False,
        freeze_llm_params=False,
        *model_args,
        **kwargs,
    ):
        if freeze_llm_params:
            # LoRa is not required as the entire network is frozen
            use_lora = False
        if use_lora and not is_training:
            with open(
                os.path.join(pretrained_model_name_or_path, "additional_config.json")
            ) as f:
                config = json.load(f)
                base_model_name = config["base_model_name"]
                quant_config = config.get("quantization_config", None)
                if quant_config is not None:
                    kwargs["quantization_config"] = BitsAndBytesConfig.from_dict(
                        quant_config
                    )

            base_model = AutoModelForCausalLM.from_pretrained(
                base_model_name, *model_args, **kwargs
            )
            base_model = PeftModel.from_pretrained(
                base_model,
                pretrained_model_name_or_path,
            )
            base_model = base_model.merge_and_unload()
        elif not use_lora and is_training:
            base_model = AutoModelForCausalLM.from_pretrained(
                pretrained_model_name_or_path, *model_args, **kwargs
            )
            base_model_name = pretrained_model_name_or_path
        else:
            with open(
                os.path.join(pretrained_model_name_or_path, "additional_config.json")
            ) as f:
                config = json.load(f)
            base_model_name = config["base_model_name"]
            quant_config = config.get("quantization_config", None)
            if quant_config is not None:
                kwargs["quantization_config"] = BitsAndBytesConfig.from_dict(
                    quant_config
                )
            base_model = AutoModelForCausalLM.from_pretrained(
                base_model_name, *model_args, **kwargs
            )

        # Instantiate the custom model
        model = cls(
            base_model,
            base_model_name,
            is_training=is_training,
            use_lora=use_lora,
            freeze_llm_params=freeze_llm_params,
            **kwargs,
        )

        # Initialize or load multi_embeds_proj depending on the flag
        if not is_training:
            multilingual_proj_state_dict = torch.load(
                f"{pretrained_model_name_or_path}/multi_embeds_proj.pth"
            )
            model.multi_embeds_proj.load_state_dict(multilingual_proj_state_dict)
        else:
            model.multi_embeds_proj.reset_parameters()

        return model

    def save_pretrained(self, save_directory):
        # Save the base model
        if not self.freeze_llm_params:
            self.base_model.save_pretrained(save_directory, "llm")
        with open(os.path.join(save_directory, "additional_config.json"), "w") as f:
            config = {"base_model_name": self.base_model_name}
            if self.quantization_config is not None:
                config["quantization_config"] = self.quantization_config.to_dict()
            json.dump(config, f)

        # Save the projection layer separately
        torch.save(
            self.multi_embeds_proj.state_dict(),
            os.path.join(save_directory, "multi_embeds_proj.pth"),
        )

    def prepare_inputs(self, input_ids1, input_ids2, mm_emb, type="train"):
        batch_size, max_length = input_ids1.shape
        hidden_dim = mm_emb.shape[-1]
        mm_seq_len = mm_emb.shape[1]

        try:
            input_embeds1 = self.base_model.model.embed_tokens(input_ids1)
            input_embeds2 = self.base_model.model.embed_tokens(input_ids2)
        except:
            # if lora is used
            input_embeds1 = self.base_model.model.model.embed_tokens(input_ids1)
            input_embeds2 = self.base_model.model.model.embed_tokens(input_ids2)

        # Create attention masks (1 for non-padding tokens, 0 for padding tokens)
        attention_masks1 = (input_ids1 != self.padding_token_id).float()
        attention_masks2 = (input_ids2 != self.padding_token_id).float()

        # Compute the effective length for each input
        effective_lengths1 = attention_masks1.sum(dim=1).long()
        effective_lengths2 = attention_masks2.sum(dim=1).long()

        # Calculate the maximum effective lengths for positioning
        max_effective_length1 = max(effective_lengths1).item()
        max_effective_length2 = max(effective_lengths2).item()

        # Initialize final embeddings and labels
        final_max_length = mm_seq_len + max_effective_length1 + max_effective_length2

        final_input_embeds = torch.zeros(
            batch_size, final_max_length, hidden_dim, device=input_embeds1.device
        )
        attention_masks = torch.zeros(
            batch_size, final_max_length, device=input_embeds1.device
        )
        labels = torch.full(
            (batch_size, final_max_length),
            self.padding_token_id,
            device=input_ids1.device,
        )

        for i in range(batch_size):
            effective_length1 = effective_lengths1[i].item()
            effective_length2 = effective_lengths2[i].item()

            total_len = mm_seq_len + effective_length1 + effective_length2
            start_idx = final_max_length - total_len
            # First append the mm_embeds
            final_input_embeds[i, start_idx : start_idx + mm_seq_len, :] = mm_emb[
                i, :, :
            ]

            final_input_embeds[
                i,
                start_idx + mm_seq_len : start_idx + mm_seq_len + effective_length1,
                :,
            ] = input_embeds1[i, -effective_length1:, :]

            final_input_embeds[
                i, start_idx + effective_length1 + mm_seq_len : final_max_length, :
            ] = input_embeds2[i, -effective_length2:, :]

            attention_masks[i, start_idx:] = 1
            labels[i, start_idx : start_idx + mm_seq_len] = self.bos_token_id
            labels[
                i, start_idx + mm_seq_len : start_idx + mm_seq_len + effective_length1
            ] = input_ids1[i, -effective_length1:]

            labels[i, start_idx + effective_length1 + mm_seq_len : final_max_length] = (
                input_ids2[i, -effective_length2:]
            )

        # Create position ids
        final_input_embeds = final_input_embeds.to(input_embeds1.dtype)

        # attention_masks = attention_masks.to(input_embeds1.dtype)
        # print(attention_masks)
        if type != "train":
            attention_masks = None

        return final_input_embeds, attention_masks, labels

    def forward(
        self,
        input_ids1=None,
        input_ids2=None,
        multi_embeds=None,
        **kwargs,
    ):
        # if self.gradient_checkpointing_enable and not self.gc_flag:
        #     # called via trainer
        #     self.base_model.gradient_checkpointing_enable()
        #     self.gc_flag = True

        if input_ids1 is None or input_ids2 is None:
            raise ValueError("input_ids should be provided.")

        if multi_embeds is not None:
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)
            multi_embeds_projected = multi_embeds_projected.view(
                -1, ML_SEQ_LEN, self.hidden_size
            )

            input_embeds, attention_masks, labels = self.prepare_inputs(
                input_ids1=input_ids1,
                input_ids2=input_ids2,
                mm_emb=multi_embeds_projected,
                type="train",
            )
            kwargs["labels"] = labels
            return self.base_model(
                inputs_embeds=input_embeds, attention_mask=attention_masks, **kwargs
            )
        else:
            input_ids = torch.cat([input_ids1, input_ids2], dim=1)
            kwargs["labels"] = input_ids
            return self.base_model(input_ids=input_ids, attention_mask=None, **kwargs)

    def generate(
        self,
        input_ids1=None,
        input_ids2=None,
        multi_embeds=None,
        **kwargs,
    ):
        if input_ids1 is None or input_ids2 is None:
            raise ValueError("input_ids should be provided.")

        if multi_embeds is not None:
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)
            multi_embeds_projected = multi_embeds_projected.view(
                -1, ML_SEQ_LEN, self.hidden_size
            )
            with torch.no_grad():
                input_embeds, attention_masks, labels = self.prepare_inputs(
                    input_ids1=input_ids1,
                    input_ids2=input_ids2,
                    mm_emb=multi_embeds_projected,
                    type="test",
                )
                return self.base_model.generate(
                    inputs_embeds=input_embeds, attention_mask=attention_masks, **kwargs
                )
        else:
            input_ids = torch.cat([input_ids1, input_ids2], dim=1)
            return self.base_model.generate(
                input_ids=input_ids, attention_mask=None, **kwargs
            )
