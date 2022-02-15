#!/bin/bash
#
# Program:
#    This is an example of how to write into a file
#
# How to run:
#    ./5_files/2_write_files.sh "hello" prueba.txt

echo "Write into a file"

echo $1 >> $2

# Multiline add
cat << EOM >> $1
$2
EOM