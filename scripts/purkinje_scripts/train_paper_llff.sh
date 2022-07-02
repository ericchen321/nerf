#!/bin/bash

i_img="$1"
N_iters="$2"
chunk="$3"
netchunk="$4"

exp_category="paper"
dataset_name="llff"

# define scene names
declare -a scene_names=(
    "fern"
    "flower"
    "fortress"
    "horns"
    "leaves"
    "orchids"
    "room"
    "trex"
    )

for scene_name in ${scene_names[@]}; do
    source scripts/train.sh \
    $exp_category $dataset_name $scene_name $i_img $N_iters $chunk $netchunk
done
