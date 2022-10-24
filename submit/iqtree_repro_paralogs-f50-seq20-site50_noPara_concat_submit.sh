#!/bin/bash
#SBATCH --job-name=iqtree_repro_paralogs-f50-seq20-site50_noPara
#SBATCH --output=iqtree_repro_paralogs-f50-seq20-site50_noPara-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=0

iqtree -p /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_BLAST_FILTERED_noPara-f50-seq20-site50/nt --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_BLAST_FILTERED_noPara-f50-seq20-site50/concat/iqtree_repro_paralogs-f50-seq20-site50_noPara -B 1000 -T 1 &> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_BLAST_FILTERED_noPara-f50-seq20-site50/concat/concat-terminal.log
iqtree -t /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_BLAST_FILTERED_noPara-f50-seq20-site50/concat/iqtree_repro_paralogs-f50-seq20-site50_noPara.treefile --gcf /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_BLAST_FILTERED_noPara-f50-seq20-site50/loci.treefile -p /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_BLAST_FILTERED_noPara-f50-seq20-site50/nt --scf 100 --cf-verbose --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_BLAST_FILTERED_noPara-f50-seq20-site50/concord/iqtree_repro_paralogs-f50-seq20-site50_noPara -T 1