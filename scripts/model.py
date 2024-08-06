import torch
import torch.nn as nn
from transformers import AutoModelForCausalLM, AutoConfig

IGNORE_INDEX = -100


class MultilingualForCausalLM(nn.Module):
    def __init__(self, base_model, encoder_hidden_dim, multilingual_sequence_len=10):
        super().__init__()
        self.base_model = base_model
        self.hidden_size = base_model.config.hidden_size
        self.multilingual_sequence_len = multilingual_sequence_len
        self.multi_embeds_proj = nn.Linear(
            encoder_hidden_dim, self.hidden_size * self.multilingual_sequence_len
        )
        self.padding_token_id = self.base_model.config.eos_token_id
        self.bos_token_id = self.base_model.config.bos_token_id

        # Freeze all model parameters except the projection layer
        for param in self.base_model.parameters():
            param.requires_grad = False

        for param in self.multi_embeds_proj.parameters():
            param.requires_grad = True

    @classmethod
    def from_pretrained(cls, pretrained_model_name_or_path, *model_args, **kwargs):
        load_multilingual_proj = kwargs.pop("load_multilingual_proj", False)
        encoder_hidden_dim = kwargs.pop("encoder_hidden_dim")
        multilingual_sequence_len = kwargs.pop("multilingual_sequence_len", 10)

        # Load the base model using the parent class's from_pretrained method
        base_model = AutoModelForCausalLM.from_pretrained(
            pretrained_model_name_or_path, *model_args, **kwargs
        )

        # Instantiate the custom model
        model = cls(base_model, encoder_hidden_dim, multilingual_sequence_len)

        # Initialize or load multi_embeds_proj depending on the flag
        if load_multilingual_proj:
            multilingual_proj_state_dict = torch.load(
                f"{pretrained_model_name_or_path}/multi_embeds_proj.pth"
            )
            model.multi_embeds_proj.load_state_dict(multilingual_proj_state_dict)
        else:
            model.multi_embeds_proj.reset_parameters()

        return model

    def save_pretrained(self, save_directory):
        # Save the base model
        self.base_model.save_pretrained(save_directory)

        # Save the projection layer separately
        torch.save(
            self.multi_embeds_proj.state_dict(),
            f"{save_directory}/multi_embeds_proj.pth",
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
        if input_ids1 is None or input_ids2 is None:
            raise ValueError("input_ids should be provided.")

        if multi_embeds is not None:
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)
            multi_embeds_projected = multi_embeds_projected.view(
                -1, self.multilingual_sequence_len, self.hidden_size
            )
            with torch.no_grad():
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
                -1, self.multilingual_sequence_len, self.hidden_size
            )
            with torch.no_grad():
                input_embeds, attention_masks, labels = self.prepare_inputs(
                    input_ids1=input_ids1,
                    input_ids2=input_ids2,
                    mm_emb=multi_embeds,
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
