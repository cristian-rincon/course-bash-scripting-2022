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




#############################
# Functions                 #
#############################




# Install postgresql
install_postgresql() {

    # Check if postgresql is already installed
    isPSQLInstalled=$(which psql)
    if [ $? -eq 0 ]; then
        echo "PostgreSQL is already installed"
        return
    else
        echo "Installing postgresql"
        read -s -p "Enter postgresql password: " POSTGRESQL_PASSWORD
        if [[ "$OSTYPE" == "linux-gnu"* ]]; then
            read -s -p "Enter sudo password: " SUDO_PASSWORD
            echo "$SUDO_PASSWORD" | sudo -S apt update
            echo "$SUDO_PASSWORD" | sudo -S apt install postgresql postgresql-contrib -y
            echo "$SUDO_PASSWORD" | sudo -S systemctl enable postgresql
            echo "$SUDO_PASSWORD" | sudo -S systemctl start postgresql
        elif [[ "$OSTYPE" == "darwin"* ]]; then
            brew install postgresql
            rm /usr/local/var/postgres/postmaster.pid
            brew services restart postgresql
        fi
    fi
}


# Uninstall postgresql
uninstall_postgresql() {

    # Check if postgresql is already installed
    isPSQLInstalled=$(which psql)
    if [ $? -eq 0 ]; then
        echo "Uninstalling postgresql"
        if [[ "$OSTYPE" == "linux-gnu"* ]]; then
            read -s -p "Enter sudo password: " SUDO_PASSWORD
            echo "$SUDO_PASSWORD" | sudo -S systemctl stop postgresql
            echo "$SUDO_PASSWORD" | sudo -S systemctl disable postgresql
            echo "$SUDO_PASSWORD" | sudo -S apt purge postgresql postgresql-contrib -y
            echo "$SUDO_PASSWORD" | sudo -S rm -rf /etc/postgresql
            echo "$SUDO_PASSWORD" | sudo -S rm -rf /etc/postgresql-common
            echo "$SUDO_PASSWORD" | sudo -S rm -rf /var/lib/postgresql
            echo "$SUDO_PASSWORD" | sudo -S userdel -r postgres
            echo "$SUDO_PASSWORD" | sudo -S groupdel postgres
            echo "$SUDO_PASSWORD" | sudo -S apt autoremove -y
        elif [[ "$OSTYPE" == "darwin"* ]]; then
            brew services stop postgresql
            brew uninstall postgresql
        fi
    else
        echo "PostgreSQL is not installed"
        return
    fi
}

# Backup database
backup_database() {
    echo "Backing up database"
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo -u postgres pg_dumpall -c -U postgres > /tmp/backup_$(date +%Y%m%d).sql
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        pg_dumpall -c -U postgres > /tmp/backup.sql
    fi
}


# Restore database
restore_database() {
    echo "Restoring database"
    read -p "Enter database to restore: " DATABASE_NAME

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo -u postgres psql -U postgres -f $DATABASE_NAME
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        psql -U postgres -f $DATABASE_NAME
    fi
}



while :
do 
    clear
    echo "-------------------------------------"
    echo "   COMMON RESOURCES VALIDATION TOOL  "
    echo "-------------------------------------"
    echo "              Main Menu              "
    echo "-------------------------------------"
    echo -e "1. Install PostgreSQL"
    echo -e "2. Uninstall PostgreSQL"
    echo -e "3. Backup Database"
    echo -e "4. Restore Database"
    echo -e "5. Program information"
    echo -e "6. Exit"
    echo -e "\nEnter your option: "
    read option
    case $option in
        1)
            install_postgresql
            read -n 1 -s -p "Press any key to continue..."
            ;;
        2)
            uninstall_postgresql
            read -n 1 -s -p "Press any key to continue..."
            ;; 
        3)
            read -p "Backup directory: " BACKUP_DIR
            backup_database $BACKUP_DIR
            read -n 1 -s -p "Press any key to continue..."
            ;;
        4)  
            read -p "Restore directory: " RESTORE_DIR
            restore_database $RESTORE_DIR
            restore_database
            read -n 1 -s -p "Press any key to continue..."
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
            cat /tmp/info.txt
            read -n 1 -s -p "Press any key to continue..."
            ;;
        6)
            exit
            ;;
        *)
            exit
            ;;
    esac
done


# option=0

# PROGRAM_TITLE="PGUTIL - COMMON UTILS FOR POSTGRESQL"
# TEXT_MENU="Choose one of the following options:"

# dialog --title "PGUTIL - COMMON UTILS FOR POSTGRESQL" --menu "Choose one of the following options:" 20 60 10 \
# 1 "Install PostgreSQL" \
# 2 "Uninstall PostgreSQL" \
# 3 "Backup Database" \
# 4 "Restore Database" \
# 5 "Program information" \
# 6 "Exit" 2> /tmp/menu.tmp.$$


# while :
# do
#     clear
#     option=`cat /tmp/menu.tmp.$$`
#     case $option in
#         1)
#             install_postgresql
#             dialog --title "PGUTIL - COMMON UTILS FOR POSTGRESQL" --textbox /tmp/install_postgresql.tmp.$$ 20 60
#             exec "$0"
#             ;;
#         2)
#             uninstall_postgresql
#             ;;
#         3)
#             backup_database
#             ;;
#         4)
#             restore_database
#             ;;
#         5)
#             echo "PGUTIL - COMMON UTILS FOR POSTGRESQL" > /tmp/info.txt
#             echo "Copyright (c) 2022 Cristian Rincón" >> /tmp/info.txt
#             echo "License: MIT License" >> /tmp/info.txt
#             echo "This program is free software:" >> /tmp/info.txt
#             echo "you can redistribute it and/or modify it under" >> /tmp/info.txt
#             echo "the terms of the MIT License." >> /tmp/info.txt
#             echo "You should have received a copy of the MIT License" >> /tmp/info.txt
#             echo "along with this program. If not, see https://opensource.org/licenses/MIT." >> /tmp/info.txt
#             echo "If you have any questions, please contact me at:" >> /tmp/info.txt
#             echo "cristian.o.rincon.b@gmail.com" >> /tmp/info.txt
#             dialog --title "PGUTIL - COMMON UTILS FOR POSTGRESQL" --textbox /tmp/info.txt 20 60
#             exec "$0"
#             ;;
#         6)
#             exit
#             ;;
#         *)
#             exit
#             ;;
#     esac
# done