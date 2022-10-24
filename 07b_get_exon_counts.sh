#!/bin/bash
#PURPOSE: Count number of sample hits per exon after running exonerate and append to annotation file
#
# Job name:
#SBATCH --job-name=exon_counts
#SBATCH --output=exon_counts-%j.log
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

#Directory for exonerate outputs
dir="/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT_RTM"

#Output file
output="/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/repro_exons_full.with_exon_counts.RTM.txt"
rm "${output}"

first=true
cat /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/repro_exons_full.txt | while read line; do
	gene_name=$(echo "${line}" | cut -d "	" -f 1)
	exon=$(echo "${line}" | cut -d "	" -f 5)
	file="${dir}/${gene_name}_${exon}-exonerate.txt"
	if [ "${gene_name}" == "external_gene_name" ]; then
		count="num_samples"
	elif [ -f "${file}" ]; then
		count=$(grep "INFO" "${file}" | awk '{print $2}' - | sort | uniq | wc -l)
	else
		count=0
	fi
	echo "${line}	${count}" >> "${output}"
done
	
echo "Done!"
