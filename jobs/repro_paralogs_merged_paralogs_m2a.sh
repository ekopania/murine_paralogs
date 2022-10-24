#!/bin/bash
# codeml command generator
# PYTHON VERSION: 3.7.10
# Script call:    /home/ek112884/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_MERGE_PARALOGS-f50-seq20-site50/nt/ -m m2a -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_MERGED_PARALOGS-f50-seq20-site50/loci -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a -part good_lab_reincarnation -tasks 9 -cpus 1 -mem 0 -n repro_paralogs_merged_paralogs_m2a
# Runtime:        09/30/2022 17:02:30
# ----------------
# IO OPTIONS
# Input directory:        /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_MERGE_PARALOGS-f50-seq20-site50/nt
# PAML model:             m2a
# Job name:               repro_paralogs_merged_paralogs_m2a
# Output directory:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a
# Creating output directory.
# Job file:               /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/repro_paralogs_merged_paralogs_m2a.sh
# ----------------
# codeml OPTIONS
# Using gene trees:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_MERGED_PARALOGS-f50-seq20-site50/loci
# ----------------
# SLURM OPTIONS
# Submit file:            /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/repro_paralogs_merged_paralogs_m2a.sh
# SLURM partition:        good_lab_reincarnation
# SLURM ntasks:           9
# SLURM cpus-per-task:    1
# SLURM mem:              0
# ----------------
# BEGIN CMDS
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000017147-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000027569-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000037222-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000042389-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000056681-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000062011-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000065502-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000108603-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a/ENSMUSP00000158854-mafft-cds.filter; codeml codeml.ctl
 # Tree file not found. Skipping: test
# Num skipped because tree file not found     : 1
# Num skipped because of premature stop codons: 0
