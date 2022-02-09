#!/bin/bash
# Program:
#   This program allows you to capture user input and print it directly.
# Path: 2_interactive_scripts/2_read_directly.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./2_interactive_scripts/

option=0
backup_name=""

echo "PostgreSQL backup utility"
echo "========================="
read -p "Enter option: " option
read -p "Enter backup file name: " backup_name

echo "Option: $option"
echo "Backup file name: $backup_name"
