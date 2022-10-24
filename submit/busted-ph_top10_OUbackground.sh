#!/bin/bash
#SBATCH --job-name=busted-ph_top10_OUbackground
#SBATCH --output=busted-ph_top10_OUbackground-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_cpu
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --tasks-per-node=8
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 8 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/busted-ph_top10_OUbackground.sh
