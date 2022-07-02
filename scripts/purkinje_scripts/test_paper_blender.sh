#!/bin/bash

exp_category="paper"
dataset_name="blender"
N_iters=1000000

# define scene names
declare -a scene_names=(
    "chair"
    "drums"
    "ficus"
    "hotdog"
    "lego"
    "materials"
    "mic"
    "ship"
    )

for scene_name in ${scene_names[@]}; do
    source scripts/test.sh $exp_category $dataset_name $scene_name $N_iters
done
