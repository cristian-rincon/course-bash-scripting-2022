#!/bin/bash
# Program:
#   This program allows you to capture user input and validate it against a regular expression.
# Validations:
#   - The user id must enter a number with size of 10 digits.
#   - The user origin must enter a valid country code.
#   - The user birth date must enter a valid date in the format yyyyMMDD.
# Path: 2_interactive_scripts/3_regular_expressions.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./2_interactive_scripts/3_regular_expressions.sh

user_id=""
user_origin=""
user_birth_date=""

# Regular expression to validate user id.
regex_user_id="^[0-9]{10}$"
# Regular expression to validate user origin.
regex_user_origin="^[A-Z]{2}$"
# Regular expression to validate user birth date.
regex_user_birth_date="^[0-9]{8}$"

echo "RegEx program to validate user id, origin and birth date."

read -p "Enter user id: " user_id
read -p "Enter user origin: " user_origin
read -p "Enter user birth date: " user_birth_date

if [[ $user_id =~ $regex_user_id ]]; then
    echo "User id is valid."
else
    echo "User id is not valid."
fi

if [[ $user_origin =~ $regex_user_origin ]]; then
    echo "User origin is valid."
else
    echo "User origin is not valid."
fi

if [[ $user_birth_date =~ $regex_user_birth_date ]]; then
    echo "User birth date is valid."
else
    echo "User birth date is not valid."
fi
