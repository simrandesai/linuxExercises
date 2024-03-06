#!/bin/bash

# Checking if the correct number of arguments is provided
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: $0 <column number> <filename.csv>" >&2
    exit 1
fi

# Assign command-line arguments to variables
column=$1

file=${2:-/dev/stdin}

# Check if the specified file exists
if [ ! -f "$file" ]; then
    echo "File not found. Enter in valid file." >&2
    exit 1
fi


tail -n +2 "$file" | cut -d ',' -f "$column" | {
	sum=0
	count=0
	while read -r value; do
		value=$((10#${value}))
		sum=$((sum + value))
		count=$((count + 1))
	done
	echo "$((sum / count))"
}







