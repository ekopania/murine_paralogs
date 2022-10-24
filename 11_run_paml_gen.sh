#!/bin/bash
#SBATCH --job-name=paml_gen
#SBATCH --output=paml_gen-%j.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ekopania4@gmail.com
#SBATCH --partition=good_lab_reincarnation
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=0

###PARALOG DATASET###
#M1a vs M2a
#python ~/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_MERGE_PARALOGS-f50-seq20-site50/nt/ -m m1a  -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_MERGED_PARALOGS-f50-seq20-site50/loci -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m1a -part good_lab_reincarnation -tasks 9 -cpus 1 -mem 0 -n repro_paralogs_merged_paralogs_m1a
#python ~/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_MERGE_PARALOGS-f50-seq20-site50/nt/ -m m2a  -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_MERGED_PARALOGS-f50-seq20-site50/loci -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/MERGED_PARALOGS-f50-seq20-site50_m2a -part good_lab_reincarnation -tasks 9 -cpus 1 -mem 0 -n repro_paralogs_merged_paralogs_m2a

###PARALOG DATASET - RTM ONLY###
#M1a vs M2a
#python ~/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m m1a -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m1a -part good_lab_reincarnation -tasks 12 -cpus 1 -mem 0 -n repro_paralogs_RTM_m1a
#python ~/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m m2a -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_m2a -part good_lab_reincarnation -tasks 12 -cpus 1 -mem 0 -n repro_paralogs_RTM_m2a

#BS test
#Branch-site test (BS2)
#See PAML manual pg 30-31
python ~/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m bs -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci -targetclade /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/large_testes_species.q90.txt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSite -part good_lab_reincarnation -tasks 10 -cpus 1 -mem 0 -n repro_paralogs_RTM_branchSite
#Null model for comparison for branch-site test (BS1)
python ~/software/core/paml-interface/paml_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED_RTM-f16-seq20-site50/nt/ -m bs_null -genetrees /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE_RTM-f16-seq20-site50/loci -targetclade /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/large_testes_species.q90.txt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/SELEC_TESTS/RTM-f16-seq20-site50_branchSiteNull -part good_lab_reincarnation -tasks 10 -cpus 1 -mem 0 -n repro_paralogs_RTM_branchSiteNull
