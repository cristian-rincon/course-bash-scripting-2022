#!/bin/bash
#
# Program:
#    This is an example of how to transfer a file using rsync.



echo "Transferring a file using rsync"

read -p "Enter the destination file: " destination_file
read -p "Enter the username: " username
read -p "Enter the password: " password
read -p "Enter the hostname: " hostname

echo "Transferring the file..."
rsync -avz $pwd $username@$hostname:$destination_file