#!/bin/bash
#
# Program:
#    This is an example of conditional expressions.

age=0
country=""
filepath=""


read -p "Enter your age: " age
echo -e "\n"
read -p "Enter your country: " country
echo -e "\n"
read -p "Enter your filepath: " filepath
echo -e "\n"

echo -e "\n Conditional expressions with numbers: \n"

if [ $age -ge 18 ]; then
    echo "You are an adult"
elif [ $age -ge 13 ]; then
    echo "You are a teenager"
elif [ $age -ge 7 ]; then
    echo "You are a child"
else
    echo "You are a baby"
fi

echo -e "\n Conditional expressions with strings: \n"

if [ $country = "India" ]; then
    echo "You are from India"
elif [ $country = "USA" ]; then
    echo "You are from USA"
elif [ $country = "UK" ]; then
    echo "You are from UK"
else
    echo "You are from somewhere else"
fi

echo -e "\n Conditional expressions with filepath: \n"

if [ -d $filepath ]; then
    echo "The filepath is a directory"
elif [ -f $filepath ]; then
    echo "The filepath is a file"
else
    echo "The filepath is neither a directory nor a file"
fi