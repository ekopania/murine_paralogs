#!/bin/bash
#SBATCH --job-name=busted-ph_top10_OUbackground_RTM
#SBATCH --output=busted-ph_top10_OUbackground_RTM-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_cpu
#SBATCH --nodes=1
#SBATCH --ntasks=9
#SBATCH --tasks-per-node=9
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 9 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/busted-ph_top10_OUbackground_RTM.sh