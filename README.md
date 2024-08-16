# Enhancing Multilingual Prompt-Based Code Generation Quality of LLMs through Zero Shot Cross Lingual Transfer

### Dataset
The multilingual cleaned test dataset for MBPP data is provided under `Data` folder. We use this dataset for testing. The original English version can be found [here](https://huggingface.co/datasets/google-research-datasets/mbpp). 

### Training and Testing Zero Shot Projector based Approach (LP) 
The LP model discussed in the paper is implemented and provided under `Models` directory. To train models use the following installation command first:

	```
	pip install -r requirements.txt 
	```

For training the projector for an existing generative model, say `google/codegemma-7b-it` , run the following command:

	```
	python train_projector.py --output proj_codegemma7b-hf-instruct --model_name google/codegemma-7b-it --num_epochs 200
	```

For inference with the trained model, follow:

	```
	python inference.py --base_model_name google/codegemma-7b-it --model_path <your trained projector directory> --csv_file Data/test.hi.sanitized.csv --dest <output_dir> --lang hi
	```

### Baselines and Evaluation Metrics

All IPYNB notebooks for baseline experiments and evaluations are self explanatory and are given under `Notebook`. For evaluation metrics follow `Notebook/eval` and execute Stage1, Stage2, Stage3 and Stage 4. 
