#!/bin/bash

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
    source scripts/test.sh $exp_category $dataset_name $scene_name
done
