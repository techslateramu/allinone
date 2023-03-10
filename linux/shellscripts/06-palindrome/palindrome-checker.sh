#!/bin/bash

read -p "Enter a string: " string

length=${#string}
half_length=$(( length / 2 ))

for (( i=0; i<half_length; i++ )); do
    opposite=$(( length - i - 1 ))
    if [[ "${string:$i:1}" != "${string:$opposite:1}" ]]; then
        echo "The string is not a palindrome."
        exit
    fi
done

echo "The string is a palindrome."
