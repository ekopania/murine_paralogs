

dataset=""
name=""

#NEED SOMETHING TO MAKE SURE ONLY CAPTURED EXONS ARE INCLUDED!!!
#Maybe start off with this/do this filtering when getting the repro_exons_full.txt file
#Ok wait this may not be as much of an issue as I thought
#Actual problem seems to be that the paralogs Carl gave me are split up; i.e., for a single species/sample there might be one "paralog" that has exons 1, 3, 4 and another that has exons 2 and 5 while they mm10 ref has them all concatenated together; need to figure out why this is and how to fix it (do I need to split up the mm10 ref exons/do these reflect real splice isoform OR do I need to somehow combine Carl's sequences? I think the latter but hard to say without looking into it more rn)
#Tried w/ mm10 removed and alignments are different but not better (possibly worse?)

#NEW PLAN 9/13/22 - BLAST mm10 exons to paralogs Carl gave me; paralog must blast w/ e-val below certain cutoff for at least one exon of the gene it represents to be included (else filter out of GENE_FASTAS fasta file before running exonerate
#Trying e < 1e-03 since Gregg used that in his get_best_blast.py script
sbatch 05_run_blast_filter.sh #runs filter_gene_fastas.py for every gene

#Trim mm10 reference exons and get them in frame so that exonerate works properly
time -p python 06_frame_exons.py > logs/frame_exons_debug.log

#Run exonerate
#time -p python 07_exonerate_gen_2.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT -n exonerate_repro_paralogs -part good_lab_reincarnation -tasks 100 > logs/exonerate_gen.log
#Run exonerate on BLAST filtered gene fastas
time -p python 07_exonerate_gen_2.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS_FILTERED/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT_BLAST_FILTERED -n exonerate_repro_paralogs_blast_filtered -part good_lab_reincarnation -tasks 100 > logs/exonerate_gen.blast_filtered.log

#OLD run exonerate - from Gregg
#time -p python 03_exonerate_gen_2.py -i ../03-Alignments/seq/reproductive-mclennan-coding/ -o ../03-Alignments/exonerate/reproductive-mclennan-coding/ -n exonerate_rep_mcl -part good_lab_reincarnation -tasks 100

#Count number of sample hits for each exon and make a new file with this info; needed for exonerate2cds
sbatch 07b_get_exon_counts.sh

#Parse exonerate output
#time -p python 08_exonerate_to_cds_2_trimmed.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS -f 175 > logs/exonerate-to-cds-f175.log
#BLAST filtered version
time -p python 08_exonerate_to_cds_2_trimmed.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT_BLAST_FILTERED -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_BLAST_FILTERED -f 175 > logs/exonerate-to-cds-f175.blast_filtered.log
#Parse exonerate output WITHOUT mm10 ref seq in output fasta
#time -p python 08b_exonerate_to_cds_2_trimmed.NOmm10.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_NOmm10 -f 0 > logs/exonerate-to-cds-f0.NOmm10.log

#Align with mafft
# mkdir ../MAFFT
time -p python mafft_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f175/aa/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT-f175/aa/ -n exonerate_mafft_f175_repro_paralogs -part good_lab_reincarnation -tasks 51 > logs/mafft_gen.f175.log
#WITHOUT mm10
#time -p python mafft_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_NOmm10-f0/aa/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_NOmm10/aa/ -n exonerate_mafft_repro_paralogs.NOmm10 -part good_lab_reincarnation -tasks 50 > logs/mafft_gen.NOmm10.log

#Backtranslate from aa to nt
time -p python 09_backtranslate.py -aa /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT/aa/ -nt /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS-f0/nt/ -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT/nt/ > logs/backtranslate.log
#WITHOUT mm10
#time -p python 10_backtranslate.py -aa /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_NOmm10/aa/  -nt /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE2CDS_NOmm10-f0/nt/  -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT_NOmm10/nt/ > logs/backtranslate.NOmm10.log

#Alignment filtering
#Defaults: seqs more than 20% gappy removed; removes almost all seqs for these paralogs; only 8 proteins remaining
time -p python 10_aln_filter.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT/nt/ -f 0 -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED > logs/aln_filter.log
#Seqs more than 50% gappy removed; 18 proteins remaining
time -p python 10_aln_filter.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT/nt/ -f 0 -s 50 -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED > logs/aln_filter_s50.log
#Seqs more than 75% gappy removed; 30 proteins remaining
time -p python 10_aln_filter.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/MAFFT/nt/ -f 0 -s 75 -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED > logs/aln_filter_s75.log

#Generate tree based on default filter
time -p python /home/ek112884/software/core/generators/iqtree_gt_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED-f0-seq20-site50/nt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE-f0-seq20-site50 -b 1000 -n iqtree_repro_paralogs-f0-seq20-site50 -part good_lab_reincarnation -tasks 8 > logs/iqtree-f0-seq20-site50.log
#Generate tree based on 50% gappy filter
time -p python /home/ek112884/software/core/generators/iqtree_gt_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED-f0-seq50-site50/nt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE-f0-seq50-site50 -b 1000 -n iqtree_repro_paralogs-f0-seq50-site50 -part good_lab_reincarnation -tasks 18 > logs/iqtree-f0-seq50-site50.log
#Generate tree based on 75% gappy filter
time -p python /home/ek112884/software/core/generators/iqtree_gt_gen.py -i /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/FILTERED-f0-seq75-site50/nt -o /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/IQTREE-f0-seq75-site50 -b 1000 -n iqtree_repro_paralogs-f0-seq75-site50 -part good_lab_reincarnation -tasks 30 > logs/iqtree-f0-seq75-site50.log
