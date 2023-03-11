#!/bin/bash
# This script counts the number of files in a directory

directory=$1
count=0

if [ ! -d "$directory" ]; then
    echo "Error: $directory is not a directory"
    exit 1
fi

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        ((count++))
    fi
done

echo "There are $count files in $directory"
