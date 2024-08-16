python train_projector.py --output proj_Mistral-7B-Instruct-v0.3 --model_name mistralai/Mistral-7B-Instruct-v0.3 --num_epochs 200
bash run_predictions.sh mistralai/Mistral-7B-Instruct-v0.3 proj_Mistral-7B-Instruct-v0.3  ../Repo/Data/
