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
    source scripts/train.sh \
    $exp_category $dataset_name $scene_name $i_img $N_iters 8192 16384
done
