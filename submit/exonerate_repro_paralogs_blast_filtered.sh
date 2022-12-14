#!/bin/bash
#SBATCH --job-name=exonerate_repro_paralogs_blast_filtered
#SBATCH --output=exonerate_repro_paralogs_blast_filtered-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=100
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 100 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_repro_paralogs_blast_filtered.sh