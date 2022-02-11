#!/bin/bash
#
# Program:
#    This is an example of how to use the break and continue statements.

echo -e "\nBreak and continue statements: \n"

for (( i=0; i<3; i++ ))
do
    for (( j=0; j<6; j++ ))
    do
        if [ $j -eq 5 ]
        then
            break
        fi
        if [ $j -eq 6 ]
        then
            continue
        fi
        echo -e "$i, $j"
    done
done


