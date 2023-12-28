#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_name>"
  exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

total=$(awk -F'\t' '{ sum += $2 } END { print sum }' "$file")

printf "$%'d\n" $total | sed 's/,/./'

