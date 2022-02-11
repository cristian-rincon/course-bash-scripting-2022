# curso-bash-scripting-2022

This is a repository with the exercises for [Bash Scripting](https://platzi.com/cursos/bash-shell/) course.

## Table of contents

- [curso-bash-scripting-2022](#curso-bash-scripting-2022)
  - [Table of contents](#table-of-contents)
  - [Project Structure](#project-structure)
  - [Class Notes](#class-notes)
    - [Class 10: Debugging in bash](#class-10-debugging-in-bash)
      - [First way to debug](#first-way-to-debug)
      - [Second way to debug](#second-way-to-debug)

## Project Structure

```console
.
|-- 1_intro
|   |-- 1_first_script.sh
|   |-- 2_variables.sh
|   |-- 3_operators.sh
|   |-- 4_arguments.sh
|   |-- 5_commands_substitution.sh
|   `-- 6_challenge_1-utility_host.sh
|-- 2_interactive_scripts
|   |-- 1_read_reply.sh
|   |-- 2_read_directly.sh
|   |-- 3_regular_expressions.sh
|   |-- 4_validate_information.sh
|   |-- 5_check_options.sh
|   |-- 6_download_files.sh
|   `-- 7_challenge_2-basic-info.sh
|-- 3_conditionals
|   |-- 1_if_else.sh
|   |-- 2_challenge_3-conditionals.sh
|   |-- 3_nested_if_statements.sh
|   |-- 4_conditional_expressions.sh
|   `-- 5_case_sentences.sh
|-- 4_iterators
|   |-- 1_arrays.sh
|   |-- 2_for_loops.sh
|   |-- 3_while_loops.sh
|   |-- 4_nested_for_loops.sh
|   |-- 5_break_n_continue.sh
|   `-- 6_options_menu.sh
|-- LICENSE
`-- README.md
```

## Class Notes

### Class 10: Debugging in bash

#### First way to debug

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

#### Second way to debug

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
