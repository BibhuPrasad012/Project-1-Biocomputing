#!/bin/bash

input="human_cds.txt"
output="output.txt"

{
grep -v ">" "$input" | awk '{printf "%s",$0}' | cut -c1-30 > "$output"
} > "$output"

echo "Saved 30 nucleotide to $output"
