#!/bin/bash

# This script adds two numbers and displays the result

# Prompt the user for the first number
read -p "Enter the first number: " num1

# Prompt the user for the second number
read -p "Enter the second number: " num2

# Calculate the sum of the two numbers
sum=$((num1 + num2))

# Display the result
echo "The sum of $num1 and $num2 is $sum"