#!/bin/bash

i_img="$1"
N_iters="$2"
chunk="$3"
netchunk="$4"

exp_category="paper"
dataset_name="blender"

# define scene names
declare -a scene_names=(
    "fern"
    # "flower"
    # "fortress"
    # "horns"
    # "leaves"
    # "orchids"
    # "room"
    # "trex"
    )

for scene_name in ${scene_names[@]}; do
    source scripts/train.sh paper llff ${scene_name} 50 101 32768 65536
    # python run_nerf.py \
    # --config configs/${exp_category}_configs/${dataset_name}_configs/${scene_name}.txt \
    # --i_img=$i_img \
    # --N_iters $N_iters \
    # --chunk=$chunk \
    # --netchunk=$netchunk
done
