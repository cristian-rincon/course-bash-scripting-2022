#!/bin/bash
#
# Program:
#    This is an example of how to use options in a menu.
#
# Befor running this program, you must install the following packages:
#    dialog
#
# Usage:
#    ./7_challenge_4-options-menu.sh
#
# License:
# MIT License

# Copyright (c) 2022 Cristian Rincón

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

option=0

PROGRAM_TITLE="COMMON RESOURCES VALIDATION TOOL"
TEXT_MENU="Choose one of the following options:"

dialog --title "COMMON RESOURCES VALIDATION TOOL" --menu "Choose one of the following options:" 20 60 10 \
1 "Show current processes" \
2 "Show available memory" \
3 "Show available disk space" \
4 "Show available network interfaces with IP addresses" \
5 "Show environment variables" \
6 "Program information" \
7 "Backup current configuration" \
8 "Exit" 2> /tmp/menu.tmp.$$

while :
do
    clear
    option=`cat /tmp/menu.tmp.$$`
    case $option in
        1)
            ps -ef > /tmp/ps.tmp.$$
            dialog --title "Current processes" --textbox /tmp/ps.tmp.$$ 20 60
            exec "$0"
            ;;
        2)
            vm_stat > /tmp/free.tmp.$$
            dialog --title "Available memory" --textbox /tmp/free.tmp.$$ 20 60
            exec "$0"
            ;;
        3)
            du -h -d1 > /tmp/df.tmp.$$
            dialog --title "Available disk space" --textbox /tmp/df.tmp.$$ 20 60
            exec "$0"
            ;;
        4)
            ifconfig -a > /tmp/ifconfig.tmp.$$
            dialog --title "Available network interfaces with IP addresses" --textbox /tmp/ifconfig.tmp.$$ 20 60
            exec "$0"
            ;;
        5)
            env | sed -e "s/=/\t/" | column -t > /tmp/env.tmp.$$
            dialog --title "Environment variables" --textbox /tmp/env.tmp.$$ 20 60
            exec "$0"
            ;;
        6)
            echo "$PROGRAM_TITLE" > /tmp/info.tmp.$$
            echo "Version: 1.0" >> /tmp/info.tmp.$$
            echo "Author:  Cristian Rincón" >> /tmp/info.tmp.$$
            echo "Date:    2022-02-11" >> /tmp/info.tmp.$$
            echo "License: MIT" >> /tmp/info.tmp.$$
            echo "Contact: cristian.o.rincon.b@gmail.com" >> /tmp/info.tmp.$$

            dialog --title "Program information" --textbox /tmp/info.tmp.$$ 20 60
            exec "$0"
            ;;
        7)
            dialog --title "Backup current configuration" --textbox /tmp/backup.tmp.$$ 20 60
            exec "$0"
            ;;
        8)
            clear
            exit 0
            ;;
    esac
done





# while : # This is an infinite loop.
# do
#     clear
#     echo "-------------------------------------"
#     echo "   COMMON RESOURCES VALIDATION TOOL  "
#     echo "-------------------------------------"
#     echo "              Main Menu              "
#     echo "-------------------------------------"
#     echo -e "1. Show current processes"
#     echo -e "2. Show available memory"
#     echo -e "3. Show available disk space"
#     echo -e "4. Show available network interfaces"
#     echo -e "5. Show environment variables"
#     echo -e "6. Show program information"
#     echo -e "7. Backup current configuration"
#     echo -e "8. Exit"
#     echo -e "\nEnter your option: "
#     read option
#     case $option in
#         1)
#             ps -ef
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         2)
#             free -m
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         3)
#             df -h
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         4)
#             ifconfig
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         5)
#             env
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         6)
#             echo "Program: $0"
#             echo "Version: 1.0"
#             echo "Author:  S.L.L. Consulting"
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         7)
#             echo "This is a backup of the current configuration."
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#         8)
#             echo "Exiting..."
#             exit 0
#             ;;
#         *)
#             echo "Invalid option..."
#             read -n 1 -s -p "Press any key to continue..."
#             ;;
#     esac
# done
