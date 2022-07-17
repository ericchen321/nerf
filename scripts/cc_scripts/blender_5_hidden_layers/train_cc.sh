#!/bin/bash
#SBATCH --array=0-7
#SBATCH --time=96:00:00
#SBATCH --account=def-rhodin
#SBATCH --job-name=tr_blender_5_hidden_layers_nerf-tf
#SBATCH --gres=gpu:v100l:1
#SBATCH --mem=24G
module load StdEnv/2016.4
module load cuda/10.0
module load python/3.7
module load imagemagick

cd /home/gxc321/
source NerfEnv/bin/activate
cd /home/gxc321/scratch/nerf/

source scripts/cc_scripts/blender_5_hidden_layers/train_per_task_cc.sh $SLURM_ARRAY_TASK_ID
