#!/bin/bash

# Program:
#    This is an example of a simple if-else statement.

class_note=0
age=0

echo "If-else sentence sample"
echo "========================="
read -n1 -p "Enter your class note: " class_note
echo -e "\n"

if((class_note>=7)); then
    echo "You passed the class"
else
    echo "You failed the class"
fi


read -n2 -p "Enter your age: " age
echo -e "\n"

if [ $age -gt 18 ]; then
    echo "You are an adult"
    echo "You can vote"
elif [ $age -gt 12 ]; then
    echo "You are a teenager"
    echo "You are not able to vote"
else
    echo "You are a child"
    echo "You are not able to vote"
fi