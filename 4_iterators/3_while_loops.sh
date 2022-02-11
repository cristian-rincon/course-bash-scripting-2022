#!/bin/bash
#
# Program:
#    This is an example of how to use the while loop.


number=1


while [ $number -le 5 ]
do
    echo $number
    number=$((number+1))
done