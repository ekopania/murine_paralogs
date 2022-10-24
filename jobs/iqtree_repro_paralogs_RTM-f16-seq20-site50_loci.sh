#!/bin/bash
# IQtree command generator
# PYTHON VERSION: 3.7.10
# Script call:    /home/ek112884/software/core/generators/iqtree_gt_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50 -b 1000 -n iqtree_repro_paralogs_RTM-f16-seq20-site50 -part good_lab_reincarnation -tasks 12
# Runtime:        10/14/2022 15:26:26
# ----------------
# IO OPTIONS
# Input directory:        /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt
# Job name:               iqtree_repro_paralogs_RTM-f16-seq20-site50
# Output directory:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50
# Creating output directory.
# Loci tree directory:    /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci
# Creating output directory.
# Loci tree file:         /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci.treefile
# Concatenation directory:/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat
# Creating output directory.
# Concordance directory:  /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concord
# Creating output directory.
# Logfile directory:      /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs
# Creating logfile directory.
# Job file:               /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/iqtree_repro_paralogs_RTM-f16-seq20-site50_loci.sh
# ----------
# SLURM OPTIONS
# Loci submit file:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/iqtree_repro_paralogs_RTM-f16-seq20-site50_loci_submit.sh
# Concat submit file:     /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/iqtree_repro_paralogs_RTM-f16-seq20-site50_concat_submit.sh
# SLURM partition:        good_lab_reincarnation
# SLURM nodes:            1
# SLURM ntasks:           12
# SLURM ntasks-per-node:  12
# SLURM cpus-per-task:    1
# SLURM mem:              0
# ----------
# BEGIN CMDS
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000017142-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000017142-mafft-cds.filter/ENSMUSP00000017142-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000017142-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000017144-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000017144-mafft-cds.filter/ENSMUSP00000017144-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000017144-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000017148-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000017148-mafft-cds.filter/ENSMUSP00000017148-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000017148-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000027569-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000027569-mafft-cds.filter/ENSMUSP00000027569-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000027569-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000034610-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000034610-mafft-cds.filter/ENSMUSP00000034610-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000034610-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000037222-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000037222-mafft-cds.filter/ENSMUSP00000037222-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000037222-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000042389-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000042389-mafft-cds.filter/ENSMUSP00000042389-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000042389-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000045430-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000045430-mafft-cds.filter/ENSMUSP00000045430-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000045430-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000056681-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000056681-mafft-cds.filter/ENSMUSP00000056681-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000056681-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000065502-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000065502-mafft-cds.filter/ENSMUSP00000065502-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000065502-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000108603-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000108603-mafft-cds.filter/ENSMUSP00000108603-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000108603-mafft-cds.filter-iqtree.log 2>&1
iqtree -s /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000128732-mafft-cds.filter.fa --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ENSMUSP00000128732-mafft-cds.filter/ENSMUSP00000128732-mafft-cds.filter -B 1000 -T 1 > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/logs/ENSMUSP00000128732-mafft-cds.filter-iqtree.log 2>&1
cat /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/*/*.treefile > /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci.treefile
# ----------
# Files skipped:          0
# Writing concat commands to /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/iqtree_repro_paralogs_RTM-f16-seq20-site50_concat_submit.sh
# iqtree -p /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat/iqtree_repro_paralogs_RTM-f16-seq20-site50 -B 1000 -T 1 &> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat/concat-terminal.log
# iqtree -t /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concat/iqtree_repro_paralogs_RTM-f16-seq20-site50.treefile --gcf /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci.treefile -p /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt --scf 100 --cf-verbose --prefix /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/concord/iqtree_repro_paralogs_RTM-f16-seq20-site50 -T 1
