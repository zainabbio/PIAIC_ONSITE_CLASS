#!/bin/bash
mapfile -t markers < Genes.csv.txt
counter=$(wc -l Genes.csv.txt| awk '{print $1}')
for ((i = 0; i < counter; i++ ))
do
tabix "gnomad_v311_all_final.vcf" "${markers[i]}" >> output.txt
done
