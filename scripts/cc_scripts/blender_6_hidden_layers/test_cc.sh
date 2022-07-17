#!/bin/bash
#SBATCH --time=08:00:00
#SBATCH --account=def-rhodin
#SBATCH --job-name=te_blender_6_hidden_layers_nerf-tf
#SBATCH --gres=gpu:v100l:1
#SBATCH --mem=24G
module load StdEnv/2016.4
module load cuda/10.0
module load python/3.7
module load imagemagick

cd /home/gxc321/
source NerfEnv/bin/activate
cd /home/gxc321/scratch/nerf/

# define scene names
declare -a scene_names=(
    "chair"
    "drums"
    "ficus"
    "hotdog"
    "lego"
    "materials"
    "mic"
    "shape"
    )

for scene_name in ${scene_names[@]}; do
    source scripts/test.sh 6_hidden_layers blender $scene_name 1000000
done
