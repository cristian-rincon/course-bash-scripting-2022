#!/bin/bash
# Program:
#   This program allows you to get name, lastname, age and address from user.
# Path: 2_interactive_scripts/7_challenge_2-basic-info.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./2_interactive_scripts/7_challenge_2-basic-info.sh

name=""
lastname=""
age=""
address=""

echo "Basic info program"
echo "========================="

read -p "Enter your name: " name
read -p "Enter your lastname: " lastname
read -p "Enter your age: " age
read -p "Enter your address: " address

echo "Your name is $name"
echo "Your lastname is $lastname"
echo "Your age is $age"
echo "Your address is $address"
echo -e "\n"
