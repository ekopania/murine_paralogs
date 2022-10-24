#!/bin/bash
#SBATCH --job-name=iqtree_repro_paralogs_RTM-f16-seq20-site50
#SBATCH --output=iqtree_repro_paralogs_RTM-f16-seq20-site50-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 12 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/iqtree_repro_paralogs_RTM-f16-seq20-site50_loci.sh