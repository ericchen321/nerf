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
    "ship"
    )

for scene_name in ${scene_names[@]}; do
    source scripts/test.sh $exp_category $dataset_name $scene_name
done
