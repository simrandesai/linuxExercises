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

# Calculate the mean using awk and print the result
mean=$(cut -d ',' -f $column "$file" | tail -n +2 | awk '{ sum += $1; count++ } END { print sum / count }')
echo "Mean of column  $column : $mean"
