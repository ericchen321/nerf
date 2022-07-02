#!/bin/bash

i_img="$1"
N_iters="$2"

exp_category="paper"
dataset_name="blender"

# define scene names
declare -a scene_names=(
    "chair"
    "drums"
    "ficus"
    "hotdog"
    "lego"
    "materials"
    "mic"
    "shape"
    )

for scene_name in ${scene_names[@]}; do
    python run_nerf.py \
    --config configs/${exp_category}_configs/${dataset_name}_configs/${scene_name}.txt \
    --i_img=$i_img \
    --N_iters $N_iters \
    --chunk=8192 \
    --netchunk=16384
done
