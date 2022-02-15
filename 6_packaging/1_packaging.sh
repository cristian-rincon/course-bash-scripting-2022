#!/bin/bash
#
# Program:
#    This is an example of how to package a program.



echo "Packaging a program"

mkdir -p 6_packaging/tmp

# echo "Option 1: TAR"
# tar -cvf 6_packaging/tmp/shell_course_scripts.tar **/*.sh

# echo "Option 2: GZIP"
# gzip 6_packaging/tmp/shell_course_scripts.tar

echo "Packaging with TAR & PBZIP, (this is the best option, supports multithreading)"
# How to use: LC_ALL=en_US.UTF-8 ./6_packaging/1_packaging.sh
tar -cf **/*.sh > 6_packaging/tmp/shell_course_scripts.tar.bz2
rm -rf 6_packaging/tmp