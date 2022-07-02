#!/bin/bash
#SBATCH --time=96:00:00
#SBATCH --account=def-rhodin
#SBATCH --job-name=tr_fern_nerf-tf
#SBATCH --gres=gpu:v100l:1
#SBATCH --mem=24G
module load StdEnv/2016.4
module load cuda/10.0
module load python/3.7
module load imagemagick

cd /home/gxc321/
source NerfEnv/bin/activate
cd /home/gxc321/scratch/nerf/
source scripts/train.sh paper llff fern 20000 1000000 32768 65536
