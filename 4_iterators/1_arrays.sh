#!/bin/bash
#
# Program:
#    This is an example of how to use arrays.

numbers=(1 2 3 4 5 6 7 8 9 10)
strings=(One, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten)
ranges=({1..10} {A..Z})

# Print the arrays.
echo -e "\nPrint the arrays: \n"
echo -e "numbers: ${numbers[*]}"
echo -e "strings: ${strings[*]}"
echo -e "ranges: ${ranges[*]}"

# Print the length of the arrays.
echo -e "\nPrint the length of the arrays: \n"
echo -e "numbers: ${#numbers[*]}"
echo -e "strings: ${#strings[*]}"
echo -e "ranges: ${#ranges[*]}"

# Print the third element of the arrays.
echo -e "\nPrint the third element of the arrays: \n"
echo -e "numbers: ${numbers[2]}"
echo -e "strings: ${strings[2]}"
echo -e "ranges: ${ranges[2]}"


# Add or remove elements from the arrays.
echo -e "\nAdd or remove elements from the arrays: \n"
numbers[11]=11
numbers[12]=12
numbers[13]=13 

strings[11]=Eleven
strings[12]=Twelve
strings[13]=Thirteen

echo -e "numbers: ${numbers[*]}"
echo -e "strings: ${strings[*]}"
