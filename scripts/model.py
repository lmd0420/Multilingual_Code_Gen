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

    def forward(self, input_ids=None, attention_mask=None, multi_embeds=None, **kwargs):
        if input_ids is None:
            raise ValueError("input_ids should be provided.")

        with torch.no_grad():  # Freeze the embeddings and base model
            input_embeds = self.base_model.model.embed_tokens(input_ids)

        if multi_embeds is not None:
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)
            multi_embeds_projected = multi_embeds_projected.view(
                -1, self.multilingual_sequence_len, self.hidden_size
            )

            input_embeds = torch.cat([input_embeds, multi_embeds_projected], dim=1)

            extra_attention = torch.ones(
                multi_embeds_projected.size()[:-1],
                dtype=attention_mask.dtype,
                device=attention_mask.device,
            )
            attention_mask = torch.cat([attention_mask, extra_attention], dim=1)
            kwargs["labels"] = torch.cat(
                [
                    kwargs["labels"],
                    torch.full(
                        (
                            multi_embeds_projected.shape[0],
                            multi_embeds_projected.shape[1],
                        ),
                        IGNORE_INDEX,
                    ).to(multi_embeds_projected.device),
                ],
                dim=1,
            )
        return self.base_model(
            inputs_embeds=input_embeds, attention_mask=attention_mask, **kwargs
        )

    def generate(
        self, input_ids=None, attention_mask=None, multi_embeds=None, **kwargs
    ):
        if input_ids is None:
            raise ValueError("input_ids should be provided.")

        with torch.no_grad():
            input_embeds = self.base_model.model.embed_tokens(input_ids)

        if multi_embeds is not None:
            multi_embeds_projected = self.multi_embeds_proj(multi_embeds)
            multi_embeds_projected = multi_embeds_projected.view(
                -1, self.multilingual_sequence_len, self.hidden_size
            )

            input_embeds = torch.cat([input_embeds, multi_embeds_projected], dim=1)

            extra_attention = torch.ones(
                multi_embeds_projected.size()[:-1],
                dtype=attention_mask.dtype,
                device=attention_mask.device,
            )
            attention_mask = torch.cat([attention_mask, extra_attention], dim=1)

        return self.base_model.generate(
            inputs_embeds=input_embeds, attention_mask=attention_mask, **kwargs
        )
