#!/bin/bash
# Program:
#   This program allows you to print option given by argument.
# Path: 1_intro/6_challenge_1-utility_host.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./1_intro/6_challenge_1-utility_host.sh
#
# Test:
#   ./1_intro/6_challenge_1-utility_host.sh -h
#   The option is: -h
#   The result is: -h


option=$1
result=$(echo $option | sed 's/[0-9]//g')

echo "The option is: $option"
echo "The result is: $result"
