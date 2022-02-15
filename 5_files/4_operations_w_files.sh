#!/bin/bash
#
# Program:
#    This is an example of how to perform operations with files
#


echo "Operations with files"
mkdir -p 5_files/tmp

echo "Copy a file to tmp folder"
cp *.* 5_files/tmp
ls -l 5_files/tmp > 5_files/list.txt

echo -e "\nMove a file to tmp folder"
mv 5_files/list.txt 5_files/tmp

echo -e "\nRemove a file from tmp folder"
rm 5_files/tmp/*.txt
rm -rf 5_files/tmp
