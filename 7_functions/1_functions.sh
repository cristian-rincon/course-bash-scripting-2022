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

PROGRAM_TITLE="PGUTIL - COMMON UTILS FOR POSTGRESQL"
TEXT_MENU="Choose one of the following options:"

dialog --title "PGUTIL - COMMON UTILS FOR POSTGRESQL" --menu "Choose one of the following options:" 20 60 10 \
1 "Install PostgreSQL" \
2 "Uninstall PostgreSQL" \
3 "Backup Database" \
4 "Restore Database" \
5 "Program information" \
6 "Exit" 2> /tmp/menu.tmp.$$


#############################
# Functions                 #
#############################

# Install postgresql
install_postgresql() {
    echo "Installing postgresql"
    if [[ $OSTUPE == "Linux" ]]; then
        sudo apt-get install postgresql postgresql-contrib
    elif [[ $OSTUPE == "Darwin" ]]; then
        brew install postgresql
    fi
}


# Uninstall postgresql
uninstall_postgresql() {
    echo "Uninstalling postgresql"
    if [[ $OSTUPE == "Linux" ]]; then
        sudo apt-get remove postgresql postgresql-contrib
    elif [[ $OSTUPE == "Darwin" ]]; then
        brew uninstall postgresql
    fi
}

# Backup database
backup_database() {
    echo "Backing up database"
    if [[ $OSTUPE == "Linux" ]]; then
        sudo -u postgres pg_dumpall -c -U postgres > /tmp/backup.sql
    elif [[ $OSTUPE == "Darwin" ]]; then
        pg_dumpall -c -U postgres > /tmp/backup.sql
    fi
}


# Restore database
restore_database() {
    echo "Restoring database"
    if [[ $OSTUPE == "Linux" ]]; then
        sudo -u postgres psql -U postgres -f /tmp/backup.sql
    elif [[ $OSTUPE == "Darwin" ]]; then
        psql -U postgres -f /tmp/backup.sql
    fi
}


while :
do
    clear
    option=`cat /tmp/menu.tmp.$$`
    case $option in
        1)
            install_postgresql
            ;;
        2)
            uninstall_postgresql
            ;;
        3)
            backup_database
            ;;
        4)
            restore_database
            ;;
        5)
            echo "PGUTIL - COMMON UTILS FOR POSTGRESQL" > /tmp/info.txt
            echo "Copyright (c) 2022 Cristian Rincón" >> /tmp/info.txt
            echo "License: MIT License" >> /tmp/info.txt
            echo "This program is free software:" >> /tmp/info.txt
            echo "you can redistribute it and/or modify it under" >> /tmp/info.txt
            echo "the terms of the MIT License." >> /tmp/info.txt
            echo "You should have received a copy of the MIT License" >> /tmp/info.txt
            echo "along with this program. If not, see https://opensource.org/licenses/MIT." >> /tmp/info.txt
            echo "If you have any questions, please contact me at:" >> /tmp/info.txt
            echo "cristian.o.rincon.b@gmail.com" >> /tmp/info.txt
            dialog --title "PGUTIL - COMMON UTILS FOR POSTGRESQL" --textbox /tmp/info.txt 20 60
            exec "$0"
            ;;
        6)
            exit
            ;;
        *)
            exit
            ;;
    esac
done
