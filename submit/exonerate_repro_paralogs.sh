#!/bin/bash
#SBATCH --job-name=exonerate_repro_paralogs
#SBATCH --output=exonerate_repro_paralogs-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=40
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 72 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_repro_paralogs.sh
