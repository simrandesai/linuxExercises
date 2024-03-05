#!/bin/bash
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f7 |
    {
	sum=0
	count=0
	while IFS= read -r value; do
	    sum=$((sum + value))
	    count=$((count + 1))
	done
	average=$((sum / count))

	echo "Sum of TotalAssessedValue: $sum"
	echo "Average TotalAssessedValue: $average"
	}
