#!/bin/bash
#
# Program:
#    This is an example of conditional expressions.

option=""


read -p "Enter your option between A-Z: " option
echo -e "\n"

case $option in
    A)
        echo "You selected option A"
        ;;
    B)
        echo "You selected option B"
        ;;
    C)
        echo "You selected option C"
        ;;
    D)
        echo "You selected option D"
        ;;
    *)
        echo "You selected an invalid option"
        ;;
esac