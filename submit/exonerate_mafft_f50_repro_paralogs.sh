#!/bin/bash
#SBATCH --job-name=exonerate_mafft_f50_repro_paralogs
#SBATCH --output=exonerate_mafft_f50_repro_paralogs-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=41
#SBATCH --ntasks-per-node=41
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 41 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_mafft_f50_repro_paralogs.sh