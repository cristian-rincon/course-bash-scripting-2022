#!/bin/bash
# Program:
#   This program allows you to review how to substitute commands in bash.
# Path: 1_intro/5_commands_substitution.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./1_intro/5_commands_substitution.sh

current_path=$(pwd)
kernel_info=`uname -a`

echo -e "The current path is:\n $current_path"
echo -e "The kernel info is:\n $kernel_info"

