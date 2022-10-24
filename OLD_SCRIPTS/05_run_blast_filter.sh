#!/bin/bash
#PURPOSE: Loop through every gene fasta file and run BLAST filtering with filter_gene_fastas.py
#
# Job name:
#SBATCH --job-name=run_blast_filter
#SBATCH --output=run_blast_filter-%j.log
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)
##SBATCH --mail-user=ekopania4@gmail.com # Where to send mail
#SBATCH --cpus-per-task=1 # Number of cores per MPI rank (ie number of threads, I think)
#SBATCH --nodes=1 #Number of nodes
#SBATCH --ntasks=1 # Number of MPI ranks (ie number of processes, I think)
#SBATCH --mem-per-cpu=200G #Kept getting a segfault until I set this to a really high value; not sure what the min memory is
# Partition:
## Since you want to run it on 72 cores, the partition good_cpu has nodes with 72 cores.
#SBATCH --partition=good_lab_reincarnation
##SBATCH -w, --nodelist=compute-0-4 # run on a specific node
#
## Command(s) to run:
source ~/software/anaconda/anaconda3/bin/activate
conda activate ek_main_enviro

ls /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS/*fa | while read file; do
	gene_name=$(echo "${file}" | cut -d "/" -f 8 | cut -d "." -f 1)
	outfile="/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS_FILTERED/${gene_name}.fa"
	python filter_gene_fastas.py -i "${file}" -o "${outfile}"
done

echo "Done!" 
