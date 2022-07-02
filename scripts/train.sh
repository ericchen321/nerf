#!/bin/bash

exp_category="$1"
dataset_name="$2"
scene_name="$3"
i_img="$4"
N_iters="$5"
chunk="$6"
netchunk="$7"

python run_nerf.py \
    --config configs/${exp_category}_configs/${dataset_name}_configs/${dataset_name}_config.txt \
    --i_img=$i_img \
    --N_iters $N_iters \
    --chunk=$chunk \
    --netchunk=$netchunk \
    --expname=llff_paper_$scene_name \
    --datadir=./data/nerf_llff_data/$scene_name
