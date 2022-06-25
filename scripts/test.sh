#!/bin/bash

dataset_name="$1"
scene_name="$2"

python run_nerf.py \
    --config paper_configs/${dataset_name}_configs/${scene_name}.txt \
    --render_only \
    --render_test | tee logs/${dataset_name}_paper_${scene_name}/test.log
