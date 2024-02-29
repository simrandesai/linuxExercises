#!/bin/bash

#Write digits.sh, to find the sum of the numbers between 1000 and 2000 (inclusive) having digits only from the set {0, 1}.

#Hint: Use a brace expansion to make the range of numbers, a loop to check each one, and a conditional statement including a regular expression to see whether the digits are in {0, 1}).

#Hint: In emacs, run M-x sh-mode to get help with code formatting including indenting.

total_sum = 0


for i in $(seq 1000 2000)

do 
