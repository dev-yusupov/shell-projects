#! /bash/sh

# 3) Create a script 3.sh which gets a filename and a name  (NAME)  from the command line. In the file there are several names in each lines. Count how many lines contains the given NAME!  Check the existance of the file!

filename=$1
name=$2

if [ ! -f $filename ]; then
    echo "Error in file"
    exit 1
fi

count=0

while IPF= read -r line; do
    if [ $line == $name ]; then
        ((count++))
    fi

done < "$filename"

echo "$count"