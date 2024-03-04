#!/bin/bash

mkdir five
cd five || exit 1

for i in {1..5}; do
    mkdir "dir$i" || exit 1
    for ((j = 1; j <= 4; j++)); do
        content=""
        for ((k = 1; k <= j; k++)); do
            content="$content$j"$'\n'
        done
	content="${content%$'\n'}"
        echo -e "$content" > "dir$i/file$j" || exit 1
    done
done

