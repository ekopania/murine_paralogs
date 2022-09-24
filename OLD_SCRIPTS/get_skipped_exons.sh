#just in case...
rm myerr.txt
rm rm_table.txt

#get exons that were not translated; get their protien IDs; put in pID,eID format
awk '{print $5}' ../repro_genes_table.txt | while read exon; do ls ../EXON_FASTAS_AA/translated_${exon}*-out.fas-out.fas 2>> myerr.txt; done 
sed 's/ls.*translated_//' myerr.txt > temp1.txt
sed 's/*.*directory//' temp1.txt > temp2.txt
cat temp2.txt | while read line; do grep "${line}" ../repro_genes_table.txt >> rm_table.txt; done
awk '{print $4 "," $5}' rm_table.txt > skip.txt
sort skip.txt | uniq > ../skip_exons.txt

#cleanup
rm myerr.txt
rm temp1.txt
rm temp2.txt
rm rm_table.txt
rm skip.txt

