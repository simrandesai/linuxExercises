#!/bin/bash

sum=0

for number in {1000..2000}; do

    if [[ "$number" =~ ^[01]+$ ]]; then    #checking if numbers are from 0 and 1 set
        ((sum += number))
    fi
done

echo "Sum of numbers with digits only from {0, 1} between 1000 and 2000 is: $sum"
