#!/bin/bash

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
    --render_only \
    --render_test | tee logs/${dataset_name}_${exp_category}_${scene_name}/test.log
done
