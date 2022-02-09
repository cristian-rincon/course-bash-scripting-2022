# curso-bash-scripting-2022

This is a repository with the exercises for the course [Bash Scripting](https://platzi.com/cursos/bash-shell/)

## Class 10: Debugging in bash

```bash
# bash -x ./1_intro/5_commands_substitution.sh
# Lines with + are executed lines, with replaced variables if available

++ pwd
+ current_path=/Users/crrincon/Documents/Personal/curso-bash-scripting-2022
++ uname -a
+ kernel_info='Darwin CO0C02FQD0KMD6M 21.1.0 Darwin Kernel Version 21.1.0: Wed Oct 13 17:33:23 PDT 2021; root:xnu-8019.41.5~1/RELEASE_X86_64 x86_64'
+ echo -e 'The current path is:\n /Users/crrincon/Documents/Personal/curso-bash-scripting-2022'
+ echo -e 'The kernel info is:\n Darwin CO0C02FQD0KMD6M 21.1.0 Darwin Kernel Version 21.1.0: Wed Oct 13 17:33:23 PDT 2021; root:xnu-8019.41.5~1/RELEASE_X86_64 x86_64'

```

```bash

# The following command will show us very verbose information about the 
# execution of the script.
bash -v ./1_intro/5_commands_substitution.sh


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
pwd
kernel_info=`uname -a`
uname -a

echo -e "The current path is:\n $current_path"
The current path is:
 /Users/crrincon/Documents/Personal/curso-bash-scripting-2022
echo -e "The kernel info is:\n $kernel_info"
The kernel info is:
 Darwin CO0C02FQD0KMD6M 21.1.0 Darwin Kernel Version 21.1.0: Wed Oct 13 17:33:23 PDT 2021; root:xnu-8019.41.5~1/RELEASE_X86_64 x86_64
```
