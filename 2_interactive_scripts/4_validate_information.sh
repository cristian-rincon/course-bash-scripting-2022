#!/bin/bash
# Program:
#   This program allows you to capture user input and validate.
# Path: 2_interactive_scripts/4_validate_information.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./2_interactive_scripts/4_validate_information.sh

option=0
backup_name=""
password=""

echo "PostgreSQL backup utility"
echo "========================="
read -n1 -p "Enter option: " option
echo ""
read -n10 -p "Enter backup name: " backup_name
read -s -p "Enter password: " password
echo ""
echo "========================="
echo "Option: $option"
echo "Backup file name: $backup_name"
echo "Password: $password"
