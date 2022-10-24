#!/bin/bash
#SBATCH --job-name=repro_paralogs_RTM_branchSiteNull
#SBATCH --output=repro_paralogs_RTM_branchSiteNull-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

parallel -j 10 < /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/scripts/jobs/repro_paralogs_RTM_branchSiteNull.sh
