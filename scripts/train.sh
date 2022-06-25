#!/bin/bash

dataset_name="$1"
scene_name="$2"
i_img="$3"
N_iters="$4"

python run_nerf.py \
    --config paper_configs/${dataset_name}_configs/${scene_name}.txt \
    --i_img=$i_img \
    --N_iters $N_iters