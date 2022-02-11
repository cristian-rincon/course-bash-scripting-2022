#!/bin/bash
#
# Program:
#    This is an example of how to use options in a menu.

option=0

while : # This is an infinite loop.
do
    clear
    echo "-------------------------------------"
    echo "PGUTIL - Options Menu of the program "
    echo "-------------------------------------"
    echo "              Main Menu              "
    echo "-------------------------------------"
    echo -e "1. Install PostgreSQL"
    echo -e "2. Uninstall PostgreSQL"
    echo -e "3. Create a database backup"
    echo -e "4. Restore a database backup"
    echo -e "5. Exit"
    echo -e "\nEnter your option: "
    read option
    case $option in
        1)
            echo -e "\nYou selected option 1. Install PostgreSQL"
            echo -e "Installing PostgreSQL...\n"
            sleep 2
            echo -e "PostgreSQL has been installed.\n"
            echo -e "Press any key to continue..."
            read
            ;;
        2)
            echo -e "\nYou selected option 2. Uninstall PostgreSQL"
            echo -e "Press any key to continue..."
            read
            ;;
        3)
            echo -e "\nYou selected option 3. Create a database backup"
            echo -e "Press any key to continue..."
            read
            ;;
        4)
            echo -e "\nYou selected option 4. Restore a database backup"
            echo -e "Press any key to continue..."
            read
            ;;
        5)
            echo -e "\nYou selected option 5. Exit"
            echo -e "Exiting the program...\n"
            exit 0
            ;;
        *)
            echo -e "\nYou selected an invalid option. Please try again."
            echo -e "Press any key to continue..."
            read
            ;;
    esac
done
