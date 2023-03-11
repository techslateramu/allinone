#!/bin/bash

# declare an array of numbers
numbers=(10 20 30 40 50 60 70)

# initialize max to the first element in the array
max=${numbers[0]}

# loop through the array and compare each element with max
for i in "${numbers[@]}"
do
    # if an element is greater than max, update max
    if [[ "$i" -gt "$max" ]]
    then
        max="$i"
    fi
done

# print the largest number
echo "The largest number in the array is: $max"
