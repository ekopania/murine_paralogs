#!/bin/bash
#SBATCH --job-name=iqtree_repro_paralogs_merged_paralogs-f50-seq20-site50
#SBATCH --output=iqtree_repro_paralogs_merged_paralogs-f50-seq20-site50-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 16 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/iqtree_repro_paralogs_merged_paralogs-f50-seq20-site50_loci.sh