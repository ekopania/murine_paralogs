#Test AMAS command to see if it translates correctly when given proper reading frame
#It does; ;however the proper reading frame is different from that listes as "phase" in Ensembl (Ensembl and biomaRt say 1)
#Also need to figure out how to get rid of UTRs

python ~/software/AMAS/amas/AMAS.py translate -f fasta -d dna -i TEST.fa --reading-frame 3 --out-format fasta
