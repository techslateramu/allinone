#!/bin/bash

# Check if the input is a positive integer
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
   echo "Error: Not a positive integer" >&2; exit 1
fi

# Check if the input is less than 2
if [ $1 -lt 2 ]; then
   echo "Error: Not a prime number" >&2; exit 1
fi

# Check if the input is prime
i=2
while [ $i -lt $1 ]; do
   if [ $(( $1 % $i )) == 0 ]; then
      echo "Not a prime number"
      exit 0
   fi
   i=$((i+1))
done

echo "Prime number"
