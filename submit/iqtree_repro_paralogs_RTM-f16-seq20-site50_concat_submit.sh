#!/bin/bash
#SBATCH --job-name=iqtree_repro_paralogs_RTM-f16-seq20-site50
#SBATCH --output=iqtree_repro_paralogs_RTM-f16-seq20-site50-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=0

iqtree -p /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat/iqtree_repro_paralogs_RTM-f16-seq20-site50 -B 1000 -T 1 &> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat/concat-terminal.log
iqtree -t /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat/iqtree_repro_paralogs_RTM-f16-seq20-site50.treefile --gcf /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci.treefile -p /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt --scf 100 --cf-verbose --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concord/iqtree_repro_paralogs_RTM-f16-seq20-site50 -T 1