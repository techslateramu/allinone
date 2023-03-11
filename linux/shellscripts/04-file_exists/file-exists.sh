#!/bin/bash

# Set the directory and file name to check
dir="/path/to/directory"
file="file-to-check.txt"

# Check if the file exists in the directory
if [ -e "$dir/$file" ]; then
  echo "File exists in directory"
else
  echo "File does not exist in directory"
fi
