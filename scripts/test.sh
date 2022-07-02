#!/bin/bash

exp_category="$1"
dataset_name="$2"
scene_name="$3"
N_iters="$4"

step_string=$(printf "%02d" $N_iters)
ckpt_path="logs/${dataset_name}_${exp_category}_${scene_name}/model_${step_string}.npy"

set +x
python -u run_nerf.py \
    --config configs/${dataset_name}_configs/${exp_category}.txt \
    --render_only \
    --render_test \
    --ft_path $ckpt_path | tee logs/${dataset_name}_${exp_category}_${scene_name}/test.log
