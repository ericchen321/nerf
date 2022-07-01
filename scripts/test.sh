#!/bin/bash

exp_category="$1"
dataset_name="$2"
scene_name="$3"

python run_nerf.py \
    --config configs/${exp_category}_configs/${dataset_name}_configs/${scene_name}.txt \
    --render_only \
    --render_test | tee logs/${dataset_name}_${exp_category}_${scene_name}/test.log
