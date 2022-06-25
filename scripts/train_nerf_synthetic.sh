#!/bin/bash

# define shape names
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
    python run_nerf.py --config paper_configs/${scene_name}.txt --i_img=10000 --N_iters 200000
done