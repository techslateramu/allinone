#!/bin/bash

# get user input for the number
echo "Enter a number:"
read num

# set the initial value of the factorial to 1
factorial=1

# loop through each number from 1 to num
for ((i=1;i<=$num;i++))
do
  # multiply the factorial by the current number
  factorial=$((factorial * i))
done

# output the factorial
echo "The factorial of $num is: $factorial"
