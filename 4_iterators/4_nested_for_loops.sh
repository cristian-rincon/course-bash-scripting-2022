#!/bin/bash
#
# Program:
#    This is an example of how to use the nested for loop.


echo -e "\nNested for loops: \n"

for (( i=0; i<2; i++ ))
do
    for (( j=0; j<5; j++ ))
    do
        echo -e "$i, $j"
    done
done