#!/bin/bash
#PURPOSE: Get gene fastas with only the species that have RTM data
#
# Job name:
#SBATCH --job-name=get_RTM_gene_fasta
#SBATCH --output=get_RTM_gene_fasta-%j.log
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)
##SBATCH --mail-user=ekopania4@gmail.com # Where to send mail
#SBATCH --cpus-per-task=1 # Number of cores per MPI rank (ie number of threads, I think)
#SBATCH --nodes=1 #Number of nodes
#SBATCH --ntasks=1 # Number of MPI ranks (ie number of processes, I think)
#SBATCH --mem-per-cpu=4G #Not sure if I should mess with these...
#SBATCH --mem=0 #Not sure if I should mess with these...
# Partition:
## Since you want to run it on 72 cores, the partition good_cpu has nodes with 72 cores.
#SBATCH --partition=good_lab_reincarnation
##SBATCH -w, --nodelist=compute-0-4 # run on a specific node
#
## Command(s) to run:
source ~/software/anaconda/anaconda3/bin/activate
conda activate ek_main_enviro

ls /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS/*fa | while read file; do
	name=$(echo "${file}" | cut -d "/" -f 8)
	echo "Working on ${name}"
	rm temp_samples.txt
	cat rtm_spec.txt | while read line; do #Need this to get the full sample names with names, paralog numbers, etc
		grep ">${line}" "${file}" >> temp_samples.txt
	done
	sed -i 's/>//' temp_samples.txt
	seqtk subseq "${file}" temp_samples.txt > "/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS_RTM/${name}"
done

#cleanup
rm temp_samples.txt

echo "Done!"
