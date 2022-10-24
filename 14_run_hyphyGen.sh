#!/bin/bash
#SBATCH --job-name=busted-ph
#SBATCH --output=busted-ph-%j.out
##SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

#Include hyphy scripts in path
export PATH=$PATH:/home/ek112884/software/core/hyphy-interface/
echo $PATH

#Run hyphy_gen.py
#Full paralog set
#python /home/ek112884/software/core/hyphy-interface/hyphy_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_MERGE_PARALOGS-f50-seq20-site50/nt/ -m busted-ph -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_MERGED_PARALOGS-f50-seq20-site50/loci/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_busted-ph-OUmodelBackground -tb /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/large_testes_species.q90.txt -rb /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/small_testes_species.OUmodel.txt -p ~/software/hyphy-analyses/ -part good_lab_cpu -tasks 9 -cpus 1 -mem 0 -n busted-ph_top10_OUbackground

#TEMPORARY
#RTM dataset
python /mnt/beegfs/ek112884/murinae/DNDS_BY_SPERM_STAGE/HYPHY/BUSTED-PH/TEMP_CORE/core/hyphy-interface/hyphy_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m busted-ph -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_busted-ph-OUmodelBackground -tb /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/large_testes_species.q90.txt -rb /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/small_testes_species.OUmodel.txt -p ~/software/hyphy-analyses/ -part good_lab_cpu -tasks 9 -cpus 1 -mem 0 -n busted-ph_top10_OUbackground_RTM

