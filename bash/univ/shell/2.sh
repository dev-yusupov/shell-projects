#! /bash/sh

# 2) Calculate the n-th fibonacci number, n is given by the command line - 2.sh. (f0=1;f1=1;f2=f0+f1 2; f3=f1+f2 3; f4=f2+f3 5 etc) 

n=$1

if [ -z $n ]; then
    read "$n"

fi
a=1
b=1

while [ "$n" -gt 2 ]; do
    temp=$b
    b=$((a + b))
    a=$temp

    echo "$a $b"
    
    ((n--))

done

echo $b