BASE_MODEL=$1
MODEL_DIR=$2
INPUT_DIR=$3


files="test.zh-cn.sanitized.csv test.en.sanitized.csv test.es.sanitized.csv test.hi.sanitized.csv test.ja.sanitized.csv test.ru.sanitized.csv"


python inference.py --base_model_name $1 --model_path $2 --csv_file $3/test.en.sanitized.csv --dest $2 --lang en
python inference.py --base_model_name $1 --model_path $2 --csv_file $3/test.es.sanitized.csv --dest $2 --lang es
python inference.py --base_model_name $1 --model_path $2 --csv_file $3/test.hi.sanitized.csv --dest $2 --lang hi
python inference.py --base_model_name $1 --model_path $2 --csv_file $3/test.ru.sanitized.csv --dest $2 --lang ru
python inference.py --base_model_name $1 --model_path $2 --csv_file $3/test.ja.sanitized.csv --dest $2 --lang ja
python inference.py --base_model_name $1 --model_path $2 --csv_file $3/test.zh-cn.sanitized.csv --dest $2 --lang zh-cn

