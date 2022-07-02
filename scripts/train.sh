#!/bin/bash

exp_category="$1"
dataset_name="$2"
scene_name="$3"
i_img="$4"
N_iters="$5"
chunk="$6"
netchunk="$7"

# get dataset dir based on name
dataset_dir=""
if [[ "$dataset_name" == "blender" ]]; then
    dataset_dir="data/nerf_synthetic/"
elif [[ "$dataset_name" == "llff" ]]; then
    dataset_dir="data/nerf_llff_data/"
else
    echo "Error! Dataset name not recognized"
    exit 1
fi

set +x
python run_nerf.py \
    --config configs/${dataset_name}_configs/${exp_category}.txt \
    --i_img=$i_img \
    --N_iters $N_iters \
    --chunk=$chunk \
    --netchunk=$netchunk \
    --expname=${dataset_name}_${exp_category}_${scene_name} \
    --datadir=$dataset_dir/$scene_name
