#!/bin/bash

#SBATCH  --output=logs/%j.out
#SBATCH  --gres=gpu:1
#SBATCH  --mem=30G

source /scratch_net/biwidl309/jamliu/conda/etc/profile.d/conda.sh
conda activate updated-sfdg
python -u cae.py "$@"
