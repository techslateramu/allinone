#!/bin/bash

# File containing JSON data
JSON_FILE=data.json

# Read JSON file and extract values
values=$(grep -o '"\w*"' $JSON_FILE | tr -d '",')

# Set each extracted value as an environment variable
for value in $values; do
  export "$value"
done