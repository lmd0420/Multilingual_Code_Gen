MODEL_DIR=$1
INPUT_DIR=$2

files="test.zh-cn.sanitized.csv test.en.sanitized.csv test.es.sanitized.csv test.hi.sanitized.csv test.ja.sanitized.csv test.ru.sanitized.csv"

for file in $files
do
python inference.py --model_path $MODEL_DIR --csv_file $INPUT_DIR/$file --dest $MODEL_DIR
done
