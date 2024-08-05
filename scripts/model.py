import torch
import torch.nn as nn
from transformers import AutoModelForCausalLM

class MultilingualForCausalLM(AutoModelForCausalLM):
    def __init__(self, config, encoder_hidden_dim):
        super().__init__(config)
        
        # Define a linear projection layer for multi_embeds
        self.multi_embeds_proj = nn.Linear(encoder_hidden_dim, config.hidden_size)

    def forward(self, input_ids=None, attention_mask=None, multi_embeds=None, **kwargs):
        if input_ids is None:
            raise ValueError("input_ids should be provided.")
        
        # Get token embeddings using the model's embedding layer
        inputs_embeds = self.transformer.wte(input_ids) #batch_size * hidden_size (e.g., 4096)

        if multi_embeds is not None:
            # Project multi_embeds to the same dimension as token embeddings
            # multi_embeds 's shape is batch_size * multilingual embedders seq_len *multilingual embedders hiddensize (e.g., 1024)
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)

            # Concatenate token embeddings and projected multi_embeds
            inputs_embeds = torch.cat([inputs_embeds, multi_embeds_projected], dim=1)
            
            # Adjust the attention mask to account for the added embeddings
            extra_attention = torch.ones(multi_embeds_projected.size()[:-1], dtype=attention_mask.dtype, device=attention_mask.device)
            attention_mask = torch.cat([attention_mask, extra_attention], dim=1)
            
            # Remove the last padding token and adjust attention mask accordingly
            inputs_embeds = inputs_embeds[:, :-1, :]
            attention_mask = attention_mask[:, :-1]

        # Call the forward method of the base model
        return super().forward(inputs_embeds=inputs_embeds, attention_mask=attention_mask, **kwargs)

    def generate(self, input_ids=None, attention_mask=None, multi_embeds=None, **kwargs):
        if input_ids is None:
            raise ValueError("input_ids should be provided.")

        # Get token embeddings using the model's embedding layer
        inputs_embeds = self.transformer.wte(input_ids)

        if multi_embeds is not None:
            # Project multi_embeds to the same dimension as token embeddings
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)
            
            # Concatenate token embeddings and projected multi_embeds
            inputs_embeds = torch.cat([inputs_embeds, multi_embeds_projected], dim=1)
            
            # Adjust the attention mask to account for the added embeddings
            extra_attention = torch.ones(multi_embeds_projected.size()[:-1], dtype=attention_mask.dtype, device=attention_mask.device)
            attention_mask = torch.cat([attention_mask, extra_attention], dim=1)
            
            # Remove the last padding token and adjust attention mask accordingly
            inputs_embeds = inputs_embeds[:, :-1, :]
            attention_mask = attention_mask[:, :-1]

        return super().generate(inputs_embeds=inputs_embeds, attention_mask=attention_mask, **kwargs)
