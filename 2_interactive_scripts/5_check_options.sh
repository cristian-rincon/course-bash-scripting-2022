#!/bin/bash
# Program:
#   This program allows you to capture user options and validate.
# Path: 2_interactive_scripts/5_check_options.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./2_interactive_scripts/5_check_options.sh

echo "Options program"
echo "========================="

echo "Option 1 sent $1"
echo "Option 2 sent $2"

echo "Sent options: $*"
echo -e "\n"

echo "Recovering values"
echo "========================="

while [ -n "$1" ]
do
    case "$1" in
        -a)
            echo "Option $1 selected"
            ;;
        -b)
            echo "Option $1 selected"
            ;;
        -c)
            echo "Option $1 selected"
            ;;
        *)
            echo "Unknown option $1"
            ;;
    esac
    shift
done