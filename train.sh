#!/bin/bash

source activate pytorch_latest_p37

python run_clm.py \
    --model_name_or_path gpt2-xl \
    --train_file $1 \
    --do_train \
    --output_dir $2 \
    --per_device_train_batch_size 1 \
    --block_size 512
