#!/bin/bash

input="output.txt"
output="codon.txt"

cds=$(grep -v ">" "$input")
echo "$cds" | sed 's/.\{3\}/& /g' > "$output"

sed -i '
s/ATA/I/g; s/ATC/I/g; s/ATT/I/g;
s/ATG/M/g;
s/ACA/T/g; s/ACC/T/g; s/ACG/T/g; s/ACT/T/g;
s/AAC/N/g; s/AAT/N/g;
s/AAA/K/g; s/AAG/K/g;
s/AGC/S/g; s/AGT/S/g;
s/AGA/R/g; s/AGG/R/g;
s/CTA/L/g; s/CTC/L/g; s/CTG/L/g; s/CTT/L/g;
s/CCA/P/g; s/CCC/P/g; s/CCG/P/g; s/CCT/P/g;
s/CAC/H/g; s/CAT/H/g;
s/CAA/Q/g; s/CAG/Q/g;
s/CGA/R/g; s/CGC/R/g; s/CGG/R/g; s/CGT/R/g;
s/GTA/V/g; s/GTC/V/g; s/GTG/V/g; s/GTT/V/g;
s/GCA/A/g; s/GCC/A/g; s/GCG/A/g; s/GCT/A/g;
s/GAC/D/g; s/GAT/D/g;
s/GAA/E/g; s/GAG/E/g;
s/GGA/G/g; s/GGC/G/g; s/GGG/G/g; s/GGT/G/g;
s/TCA/S/g; s/TCC/S/g; s/TCG/S/g; s/TCT/S/g;
s/TTC/F/g; s/TTT/F/g;
s/TTA/L/g; s/TTG/L/g;
s/TAC/Y/g; s/TAT/Y/g;
s/TAA/*/g; s/TAG/*/g; s/TGA/*/g;
s/TGC/C/g; s/TGT/C/g;
s/TGG/W/g
' "$output"

echo "Translation result saved to $output"
