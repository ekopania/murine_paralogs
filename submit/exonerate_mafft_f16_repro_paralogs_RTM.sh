#!/bin/bash
#SBATCH --job-name=exonerate_mafft_f16_repro_paralogs_RTM
#SBATCH --output=exonerate_mafft_f16_repro_paralogs_RTM-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --ntasks-per-node=20
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 20 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_mafft_f16_repro_paralogs_RTM.sh