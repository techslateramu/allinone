#!/bin/bash

# Ask user to enter filename to be read
echo "Enter filename to read:"
read filename

# Check if the file exists
if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

# Read file line by line and perform specific action on each line
while read line; do
  # Replace all spaces with underscores
  new_line=${line// /_}
  
  # Print the modified line
  echo $new_line
  
  # Perform other actions here as needed
done < $filename
