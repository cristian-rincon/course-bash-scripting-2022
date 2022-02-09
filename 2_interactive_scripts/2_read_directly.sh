#!/bin/bash
# Program:
#   This program allows you to capture user input and print it using $REPLY.
# Path: 2_interactive_scripts/2_read_echo.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./2_interactive_scripts/2_read_echo.sh

option=0
backup_name=""

echo "PostgreSQL backup utility"
echo "========================="
echo -n "Enter option: "
read
option=$REPLY
echo "Enter backup file name: "
read
backup_name=$REPLY

echo "Option: $option"
echo "Backup file name: $backup_name"
