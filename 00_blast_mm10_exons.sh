#!/bin/bash
#PURPOSE: Blast mm10 mouse reference exons to reproductive gene paralog sequences
#
# Job name:
#SBATCH --job-name=exon_blast
#SBATCH --output=exon_blast-%j.log
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)
##SBATCH --mail-user=ekopania4@gmail.com # Where to send mail
#SBATCH --cpus-per-task=1 # Number of cores per MPI rank (ie number of threads, I think)
#SBATCH --nodes=1 #Number of nodes
#SBATCH --ntasks=1 # Number of MPI ranks (ie number of processes, I think)
#SBATCH --mem-per-cpu=40G #Not sure if I should mess with these...
#SBATCH --mem=96000 #Not sure if I should mess with these...
# Partition:
## Since you want to run it on 72 cores, the partition good_cpu has nodes with 72 cores.
#SBATCH --partition=good_lab_cpu
##SBATCH -w, --nodelist=compute-0-4 # run on a specific node
#
## Command(s) to run:
ls /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/repro_genes-selected-cds-nt-trimmed/ENSMUSE*nt-trimmed.fa | while read exon_fa; do
	name=$(echo "${exon_fa}" | cut -d "." -f 1 | cut -d "/" -f 8)
	echo "Generating blast results for ${name}"
	ls /mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/GENE_FASTAS/*.fa | while read db_name; do
		short_name=$(echo "${db_name}" | cut -d "." -f 1 | cut -d "/" -f 8)
		echo "${short_name}"
		blastn -db "${db_name}" -query "${exon_fa}" -out "/mnt/beegfs/ek112884/murinae/PARALOG_PROCESSING/BLAST_RESULTS/${name}.blastn.to${short_name}.out" -word_size 11 -outfmt 6
	done
done

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
