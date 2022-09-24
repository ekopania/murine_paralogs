#!/bin/bash
#PURPOSE: make custom/local blast databases from Carl's paralog fasta files (after grouping them by gene)
#
# Job name:
#SBATCH --job-name=makeblastdb
#SBATCH --output=makeblastdb-%j.log
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)
##SBATCH --mail-user=ekopania4@gmail.com # Where to send mail
#SBATCH --cpus-per-task=1 # Number of cores per MPI rank (ie number of threads, I think)
#SBATCH --nodes=1 #Number of nodes
#SBATCH --ntasks=1 # Number of MPI ranks (ie number of processes, I think)
#SBATCH --mem-per-cpu=4G #Not sure if I should mess with these...
#SBATCH --mem=0 #Not sure if I should mess with these...
# Partition:
## Since you want to run it on 72 cores, the partition good_cpu has nodes with 72 cores.
#SBATCH --partition=good_lab_cpu
##SBATCH -w, --nodelist=compute-0-4 # run on a specific node
#
## Command(s) to run:

ls /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS/*.fa | while read in_fasta; do
	echo "${in_fasta}"
	out_name=${in_fasta}
	#out_name=$(echo "${in_fasta}" | cut -d "." -f 1)
	echo "${out_name}"

	#makeblastdb -in "${in_fasta}" -out "${out_name}" -dbtype nucl -parse_seqids -title "${out_name}.blast_db"
	makeblastdb -in "${in_fasta}" -out "${out_name}" -dbtype nucl -title "${out_name}.blast_db"
done

echo "Done!"
