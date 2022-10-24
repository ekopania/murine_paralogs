#!/bin/bash
# MAFFT command generator
# PYTHON VERSION: 3.7.10
# Script call:    mafft_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ -n exonerate_mafft_f50_repro_paralogs_noPara -part good_lab_reincarnation -tasks 51
# Runtime:        09/26/2022 21:31:02
# ----------------
# IO OPTIONS
# Input directory:        /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs
# Job name:               exonerate_mafft_f50_repro_paralogs_noPara
# Output directory:       /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa
# Creating output directory.
# Logfile directory:      /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs
# Creating logfile directory.
# Job file:               /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/exonerate_mafft_f50_repro_paralogs_noPara.sh
# ----------
# SLURM OPTIONS
# Submit file:            /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/submit/exonerate_mafft_f50_repro_paralogs_noPara.sh
# SLURM partition:        good_lab_reincarnation
# SLURM ntasks:           51
# SLURM ntasks-per-node:  51
# SLURM cpus-per-task:    1
# SLURM mem:              0
# ----------
# BEGIN CMDS
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000000573.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000000573-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000000573-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000017147.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000017147-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000017147-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000027569.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000027569-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000027569-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000037222.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000037222-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000037222-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000042389.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000042389-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000042389-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000045221.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000045221-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000045221-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000045430.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000045430-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000045430-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000052089.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000052089-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000052089-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000056681.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000056681-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000056681-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000061529.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000061529-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000061529-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000062011.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000062011-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000062011-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000065502.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000065502-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000065502-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000108603.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000108603-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000108603-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000128732.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000128732-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000128732-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000147099.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000147099-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000147099-mafft.fa
mafft --adjustdirection --preservecase /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED_TEST-f50/aa-noParalogs/ENSMUSP00000158854.fa 2> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/logs/ENSMUSP00000158854-mafft.log 1> /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_BLAST_FILTERED_noPara-f50/aa/ENSMUSP00000158854-mafft.fa
