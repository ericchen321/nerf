#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --account=def-rhodin
#SBATCH --job-name=tr_lego_nerf-tf
#SBATCH --gres=gpu:v100l:1
#SBATCH --mem=24G
module load StdEnv/2016.4
module load python/3.7
module load cuda cudnn
module load imagemagick

cd /home/gxc321/
source NerfEnv/bin/activate
cd /home/gxc321/scratch/nerf/
source scripts/train.sh blender lego 20000 1000000
