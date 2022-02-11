#!/bin/bash
#
# Program:
#    This is an example of nested if-else statements.

class_note=0

read -n1 -p "Enter your class note: " class_note
echo -e "\n"

if [ $class_note -ge 7 ]; then
    echo "You passed the class"
    if [ $class_note -eq 10 ]; then
        echo "You got an A"
    elif [ $class_note -eq 9 ]; then
        echo "You got a B"
    elif [ $class_note -eq 8 ]; then
        echo "You got a C"
    else
        echo "You got a D"
    fi
else
    echo "You failed the class with a F"
    echo "You failed the class"
fi