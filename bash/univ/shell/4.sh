#! /bash/sh

# 4) Create a script 4.sh, which gets a filename as a command line parameter. In the file there are two numbers per line. Count and write out the lines in which the sum of the two numbers are smaller than 100. The numbers are separated by ;

#!/bin/bash

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1
count=0

# Read each line from the file
while IFS=";" read -r num1 num2; do
    # Check if both numbers are valid
    if [[ "$num1" =~ ^[0-9]+$ ]] && [[ "$num2" =~ ^[0-9]+$ ]]; then
        # Perform the sum and check if it's less than 100
        if [ $((num1 + num2)) -lt 100 ]; then
            ((count++))
        fi
    else
        echo "Skipping invalid line: $num1;$num2"
    fi
done < "$filename"

# Output the count of lines where the sum is less than 100
echo "Lines where the sum of the numbers is less than 100: $count"
