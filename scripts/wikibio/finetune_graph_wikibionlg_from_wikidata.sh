FOLDER=$(pwd)
GPUS=$1
RESUME=$2

CUDA_VISIBLE_DEVICES=${GPUS} python code/run.py --batch_size 32 --dataset wikibionlg \
 --tokenizer_dir ${FOLDER}/GPT2_tokenizer/ --max_enc_len 512 --max_dec_len 64 --num_workers 4 --epochs 20 \
 --printing_steps 200 --save_every_n_epochs 1 --encoder graph --finetune --learning_rate 2e-5 \
 --load_from ${RESUME}
