#!/bin/bash
#
# Program:
#    This is an example of how to package a program with password.



echo "Packaging a program"

mkdir -p 6_packaging/tmp

echo "Packaging with ZIP, with password"

zip -e 6_packaging/tmp/shell_course_scripts.zip **/*.sh

echo "Clean up"
rm -rf 6_packaging/tmp