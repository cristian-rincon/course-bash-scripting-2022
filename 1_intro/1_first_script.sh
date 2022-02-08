#!/bin/bash
# Program:
#   This program allows you to perform utilitary operations for PostgreSQL.

PROGRAM_NAME="PostgreSQL utilitary operations"

echo "This program allows you to perform utilitary operations for PostgreSQL."
echo -e "You should input the operation you want to perform.\n"

# Export variable to be used in the next script
export PROGRAM_NAME
# Run the next script
$(pwd)/1_intro/2_variables.sh