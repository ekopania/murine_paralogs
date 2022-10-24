#!/bin/bash
# codeml command generator
# PYTHON VERSION: 3.7.10
# Script call:    /home/ek112884/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m bs -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci -targetclade /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/large_testes_species.q90.txt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite -part good_lab_reincarnation -tasks 60 -cpus 1 -mem 0 -n repro_paralogs_RTM_branchSite
# Runtime:        10/23/2022 20:54:44
# ----------------
# IO OPTIONS
# Input directory:        /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt
# PAML model:             bs
# Job name:               repro_paralogs_RTM_branchSite
# Output directory:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite
# Creating output directory.
# Job file:               /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/repro_paralogs_RTM_branchSite.sh
# ----------------
# codeml OPTIONS
# Using gene trees:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci
# Target clade:           Berylmys_bowersi_ABTC116431,Chiruromys_vates_ABTC43096,Lorentzimys_nouhuysi_ABTC-46314,Mastacomys_fuscus_M13957,Paucidentomys_vermidax_Z21914,Pogonomys_macrourus_ABTC43144,Pseudomys_fumeus_ABTC08168,Rattus_lutreolus_sample2
# ----------------
# SLURM OPTIONS
# Submit file:            /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/repro_paralogs_RTM_branchSite.sh
# SLURM partition:        good_lab_reincarnation
# SLURM ntasks:           60
# SLURM cpus-per-task:    1
# SLURM mem:              0
# ----------------
# BEGIN CMDS
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000017142-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000017144-mafft-cds.filter; codeml codeml.ctl
 # Target clade not found. Skipping: /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000017148-mafft-cds.filter.fa
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000027569-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000034610-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000037222-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000042389-mafft-cds.filter; codeml codeml.ctl
 # Target clade not found. Skipping: /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ENSMUSP00000045430-mafft-cds.filter.fa
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000056681-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000065502-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000108603-mafft-cds.filter; codeml codeml.ctl
cd /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite/ENSMUSP00000128732-mafft-cds.filter; codeml codeml.ctl
# Num skipped because tree file not found     : 0
# Num skipped because target clade not found  : 2
# Num skipped because of premature stop codons: 0
