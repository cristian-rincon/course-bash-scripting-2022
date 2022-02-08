#!/bin/bash
# Program:
#   This program allows you to review how to pass arguments in bash.
# Path: 1_intro/4_arguments.sh
# Author:
#  Cristian Rincón
#
# How to run this script:
# ./1_intro/4_arguments.sh "Sample Course" "L-V 8:00-12:00"

course_name=$1
course_schedule=$2

echo "The course name is: $course_name"
echo "The course schedule is: $course_schedule"
echo "The number of arguments received is: $#"
echo "The arguments received are: $*"
