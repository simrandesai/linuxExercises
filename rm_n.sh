
#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 1 # exiting with non-zero status to indicate failure
fi

dir=$1
n=$2

ls "$dir" > afile.txt

while read -r file; do
    file_size=$(stat -c "%s" "$dir/$file")
    if [[ $file_size -gt $n ]]; then
	rm -rf "$dir/$file"
	echo "Removed $dir/$file"
    fi
done < afile.txt

rm afile.txt # Clean up temporary file
