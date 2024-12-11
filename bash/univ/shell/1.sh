#! /bash/sh

# 1) Create 1.sh, which gets 2 numbers (a,b) from the command line and read them from keyboard if they were missing. 
# Calculate the result of 5*a*b and write it to the screen and to multiplication.txt file.

a=$1
b=$2

if [ -z "$a" ]; then
    read a

fi

if [ -z "$b" ]; then
    read b

fi

res=$(expr 5 \* $a \* $b)

echo "$res"
