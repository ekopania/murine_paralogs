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
dir="/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/EXONERATE_OUTPUT_BLAST_FILTERED"

#Output file
output="/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/repro_exons_full.with_exon_counts.txt"
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
	
#grep "INFO" Svs2_ENSMUSE00000244955-exonerate.txt | awk '{print $2}' - | sort | uniq | wc -l

echo "Done!"

#i="gene_fastas/slx.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/slxl1.fa" -query $i -out ${name}.blastn.toSlxl1.out -word_size 11 -outfmt 7
#blastn -db "gene_fastas/sly.fa" -query $i -out ${name}.blastn.toSly.out -word_size 11 -outfmt 7
#
#i="gene_fastas/slxl1.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/slx.fa" -query $i -out ${name}.blastn.toSlx.out -word_size 11 -outfmt 7
#blastn -db "gene_fastas/sly.fa" -query $i -out ${name}.blastn.toSly.out -word_size 11 -outfmt 7
#
#i="gene_fastas/sly.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/slx.fa" -query $i -out ${name}.blastn.toSlx.out -word_size 11 -outfmt 7
#blastn -db "gene_fastas/slxl1.fa" -query $i -out ${name}.blastn.toSlxl1.out -word_size 11 -outfmt 7
#
#i="gene_fastas/sstx.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/ssty1.fa" -query $i -out ${name}.blastn.toSsty1.out -word_size 11 -outfmt 7
#blastn -db "gene_fastas/ssty2.fa" -query $i -out ${name}.blastn.toSsty2.out -word_size 11 -outfmt 7
#
#i="gene_fastas/ssty1.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/sstx.fa" -query $i -out ${name}.blastn.toSstx.out -word_size 11 -outfmt 7
#blastn -db "gene_fastas/ssty2.fa" -query $i -out ${name}.blastn.toSsty2.out -word_size 11 -outfmt 7
#
#i="gene_fastas/ssty2.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/sstx.fa" -query $i -out ${name}.blastn.toSstx.out -word_size 11 -outfmt 7
#blastn -db "gene_fastas/ssty1.fa" -query $i -out ${name}.blastn.toSsty1.out -word_size 11 -outfmt 7
#
#i="gene_fastas/srsx.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/srsy.fa" -query $i -out ${name}.blastn.toSrsy.out -word_size 11 -outfmt 7
#
#i="gene_fastas/srsy.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/srsx.fa" -query $i -out ${name}.blastn.toSrsx.out -word_size 11 -outfmt 7
#
#i="gene_fastas/astx.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/asty.fa" -query $i -out ${name}.blastn.toAsty.out -word_size 11 -outfmt 7
#
#i="gene_fastas/asty.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/astx.fa" -query $i -out ${name}.blastn.toAstx.out -word_size 11 -outfmt 7
#
#i="gene_fastas/eif2s3x.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/eif2s3y.fa" -query $i -out ${name}.blastn.toEif2s3y.out -word_size 11 -outfmt 7
#
#i="gene_fastas/eif2s3y.fa"
#name=$(echo "${i}" | cut -d "." -f 1)
#echo "Generating blast results for ${name}"
#blastn -db "gene_fastas/eif2s3x.fa" -query $i -out ${name}.blastn.toEif2s3x.out -word_size 11 -outfmt 7
