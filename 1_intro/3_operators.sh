#!/bin/bash
# Program:
#   This program allows you to review operators in bash.
# Path: 1_intro/3_operators.sh
# Author:
#  Cristian Rincón
#

num_1=10
num_2=5

RECEIVED_NUMBERS_TEXT="The numbers you received are: $num_1 and $num_2"
COLUMNS_HEADERS="Operation\tOperand\tResult"

echo -e "Aritmetic operations:\n"
echo $RECEIVED_NUMBERS_TEXT
echo -e $COLUMNS_HEADERS
echo -e "  Addition:\t$((num_1 + num_2))"
echo -e "  Substraction:\t$((num_1 - num_2))"
echo -e "  Multiplication:\t$((num_1 * num_2))"
echo -e "  Division:\t$((num_1 / num_2))"
echo -e "  Modulus:\t$((num_1 % num_2))"

echo -e "\nRelational operations:\n"
echo $RECEIVED_NUMBERS_TEXT
echo -e $COLUMNS_HEADERS
echo -e "  Greater than \t(>)\t$((num_1 > num_2))"
echo -e "  Less than \t(<)\t$((num_1 < num_2))"
echo -e "  Greater than or equal \t(>=)\t$((num_1 >= num_2))"
echo -e "  Less than or equal \t(<=)\t$((num_1 <= num_2))"
echo -e "  Equal to \t(==)\t$((num_1 == num_2))"
echo -e "  Not equal \t(!=)\t$((num_1 != num_2))"

echo -e "\nAsignment operations:\n"
echo $RECEIVED_NUMBERS_TEXT
echo -e $COLUMNS_HEADERS
echo -e "  Addition \t(+=)\t$((num_1 += num_2))"
echo -e "  Substraction \t(-=)\t$((num_1 -= num_2))"
echo -e "  Multiplication \t(*=)\t$((num_1 *= num_2))"
echo -e "  Division \t(/=)\t$((num_1 /= num_2))"
echo -e "  Modulus \t(%=)\t$((num_1 %= num_2))"

