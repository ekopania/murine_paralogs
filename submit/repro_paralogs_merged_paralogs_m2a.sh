#!/bin/bash
#SBATCH --job-name=repro_paralogs_merged_paralogs_m2a
#SBATCH --output=repro_paralogs_merged_paralogs_m2a-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=9
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 9 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/repro_paralogs_merged_paralogs_m2a.sh