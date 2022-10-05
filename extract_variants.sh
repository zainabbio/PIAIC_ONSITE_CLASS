#!/bin/bash

mapfile -t markers < variantslist

counter=$(wc -l variantslist | awk '{print $1}')

for ((i = 0; i < counter; i++ ))

do
{print $i}

tabix ../data/Multisample_Data/GS.annotated.vcf.gz "${markers[i]}" >> output.vcf

done
  
“biomart”
