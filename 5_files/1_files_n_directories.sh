#!/bin/bash
#
# Program:
#    This is an example of how to handle files and directories.

echo "Files and directories:"

if [ $1 = "d" ]; then 
    mkdir -m 755 $2
    echo "Directory $2 created."
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "File $2 created."
    ls -la $2
else
    echo "Usage: $0 [d|f] [file|directory]"
fi