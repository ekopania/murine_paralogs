#!/bin/bash
# codeml command generator
# PYTHON VERSION: 3.7.10
# Script call:    /home/ek112884/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m m1a -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a -part good_lab_reincarnation -tasks 12 -cpus 1 -mem 0 -n repro_paralogs_RTM_m1a
# Runtime:        10/14/2022 15:46:35
# ----------------
# IO OPTIONS
# Input directory:        /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt
# PAML model:             m1a
# Job name:               repro_paralogs_RTM_m1a
# Output directory:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a
# Creating output directory.
# Job file:               /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/repro_paralogs_RTM_m1a.sh
# ----------------
# codeml OPTIONS
# Using gene trees:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci
# ----------------
# SLURM OPTIONS
# Submit file:            /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/repro_paralogs_RTM_m1a.sh
# SLURM partition:        good_lab_reincarnation
# SLURM ntasks:           12
# SLURM cpus-per-task:    1
# SLURM mem:              0
# ----------------
# BEGIN CMDS
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000017142-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000017144-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000017148-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000027569-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000034610-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000037222-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000042389-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000045430-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000056681-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000065502-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000108603-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a/ENSMUSP00000128732-mafft-cds.filter; codeml codeml.ctl
# Num skipped because tree file not found     : 0
# Num skipped because of premature stop codons: 0
