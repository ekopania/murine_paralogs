#!/bin/bash
#SBATCH --job-name=iqtree_repro_paralogs-f0-seq20-site50
#SBATCH --output=iqtree_repro_paralogs-f0-seq20-site50-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 8 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/iqtree_repro_paralogs-f0-seq20-site50_loci.sh