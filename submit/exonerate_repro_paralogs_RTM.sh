#!/bin/bash
#SBATCH --job-name=exonerate_repro_paralogs_RTM
#SBATCH --output=exonerate_repro_paralogs_RTM-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=90
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 90 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_repro_paralogs_RTM.sh
