#!/bin/bash
#SBATCH --job-name=repro_paralogs_RTM_m1a
#SBATCH --output=repro_paralogs_RTM_m1a-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 12 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/repro_paralogs_RTM_m1a.sh