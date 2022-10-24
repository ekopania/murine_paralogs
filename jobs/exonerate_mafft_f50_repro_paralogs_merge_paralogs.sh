#!/bin/bash
# MAFFT command generator
# PYTHON VERSION: 3.7.10
# Script call:    mafft_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ -n exonerate_mafft_f50_repro_paralogs_merge_paralogs -part good_lab_reincarnation -tasks 40
# Runtime:        09/29/2022 17:47:25
# ----------------
# IO OPTIONS
# Input directory:        /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs
# Job name:               exonerate_mafft_f50_repro_paralogs_merge_paralogs
# Output directory:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa
# Creating output directory.
# Logfile directory:      /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs
# Creating logfile directory.
# Job file:               /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_mafft_f50_repro_paralogs_merge_paralogs.sh
# ----------
# SLURM OPTIONS
# Submit file:            /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/exonerate_mafft_f50_repro_paralogs_merge_paralogs.sh
# SLURM partition:        good_lab_reincarnation
# SLURM ntasks:           40
# SLURM ntasks-per-node:  40
# SLURM cpus-per-task:    1
# SLURM mem:              0
# ----------
# BEGIN CMDS
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000000573.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000000573-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000000573-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000017147.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000017147-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000017147-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000027569.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000027569-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000027569-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000037222.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000037222-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000037222-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000042389.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000042389-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000042389-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000045221.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000045221-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000045221-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000045430.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000045430-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000045430-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000052089.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000052089-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000052089-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000056681.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000056681-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000056681-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000061529.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000061529-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000061529-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000062011.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000062011-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000062011-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000065502.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000065502-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000065502-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000108603.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000108603-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000108603-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000128732.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000128732-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000128732-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000147099.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000147099-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000147099-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f50/aa-merge-paralogs/ENSMUSP00000158854.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/logs/ENSMUSP00000158854-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_MERGE_PARALOGS-f50/aa/ENSMUSP00000158854-mafft.fa
