# Code model with projection


from transformers import (
    AutoModelForCausalLM,
    AutoConfig,
)
from transformers.modeling_utils import PreTrainedModel
from transformers.configuration_utils import PretrainedConfig
import torch.nn.functional as F
import torch
import logging
import torch.nn as nn
import torch.nn.functional as F
from peft import LoraConfig, get_peft_model
import os

logger = logging.getLogger(__name__)
SPL_INDEX = 100


class MultilingualProjectorConfig(PretrainedConfig):
    def __init__(self, src_encoder_dim=1024, tgt_encoder_dim):
        self.src_encoder_dim = src_encoder_dim
        self.tgt_encoder_dim = tgt_encoder_dim
    def save_pretrained(self, save_directory: str | os.PathLike, push_to_hub: bool = False, **kwargs):
        return super().save_pretrained(save_directory, push_to_hub, **kwargs)
    def from_pretrained(self,model_path: str | os.PathLike):
        return super().from_pretrained(pretrained_model_name_or_path=model_path)

class MultilingualProjectorModel(PreTrainedModel):
    base_model_prefix = "mlprojmodel"
    supports_gradient_checkpointing = True

    def __init__(self, src_encoder_dim, tgt_encoder_dim):
        self.projection = nn.Linear(src_encoder_dim, tgt_encoder_dim)

    def forward(self, input_emb):
        output = self.projection(input_emb)
        return output


class MultilingualLLM(PreTrainedModel):
    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)

    def from_pretrained(self, model_path):
        encoder_path = os.path.join(model_path, "encoder")
