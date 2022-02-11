#!/bin/bash
#
# Program:
#    This is an example of how to use the for loop.


numbers=(1 2 3 4 5 6 7 8 9 10)

# Print the array

echo -e "\nPrint the array: \n"
for number in ${numbers[*]}
do
    echo $number
done

# Print strings

echo -e "\nPrint strings: \n"

for string in "Hello" "World"
do
    echo $string
done

# Iterate over files

echo -e "\nIterate over files: \n"

for file in *
do
    echo $file
done

# Iterate over commands

echo -e "\nIterate over commands: \n"

for file in $(ls) 
do
    echo $file
done

# Iterate using classic for loop

echo -e "\nIterate using classic for loop: \n"

for (( i=0; i<5; i++ ))
do
    echo $i
done