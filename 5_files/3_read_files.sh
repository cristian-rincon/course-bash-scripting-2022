#!/bin/bash
#
# Program:
#    This is an example of how to write into a file
#
# How to run:
#    ./5_files/3_read_files.sh prueba.txt

echo "Read from a file"
cat $1

echo -e "\nSave the content of the file in a variable"
fileContent=$(cat $1)

# Using IFS to read the file (IFS is the internal field separator) to cut whitespaces
echo -e "\nUsing IFS to read the file (IFS is the internal field separator) to cut whitespaces"

while IFS= read -r line
do
    echo $line
done <<< "$fileContent"


