import torch
import json
import os
import torch.nn as nn
from transformers import PreTrainedModel, PretrainedConfig
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training, PeftModel


class MultilingualProjectorConfig(PretrainedConfig):
    model_type = "multiling_proj"

    def __init__(self, ml_encoder_dim=1024, hidden_size=4096, **kwargs):
        super().__init__(**kwargs)
        self.ml_encoder_dim = ml_encoder_dim
        self.hidden_size = hidden_size


class MultilingualProjector(PreTrainedModel):
    config_class = MultilingualProjectorConfig

    def __init__(self, config: MultilingualProjectorConfig):
        super().__init__(config=config)

        self.projection1 = nn.Linear(
            in_features=config.ml_encoder_dim, out_features=int(config.hidden_size / 2)
        )
        self.projection2 = nn.Linear(
            in_features=int(config.hidden_size / 2), out_features=config.hidden_size
        )

    def forward(self, x):
        x = self.projection1(x)
        x = nn.ReLU()(x)
        x = self.projection2(x)
        return x
