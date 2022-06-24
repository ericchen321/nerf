#!/bin/bash

# define shape names
declare -a scene_names=(
    "chair"
    # "drums"
    # "ficus"
    # "hotdog"
    # "lego"
    # "materials"
    # "mic"
    # "ship"
    )

for scene_name in ${scene_names[@]}; do
    python run_nerf.py \
    --config paper_configs/${scene_name}.txt \
    --render_only \
    --render_test | tee logs/blender_paper_${scene_name}/test.log
done