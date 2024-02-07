#!/usr/bin/env bash
# First line of the script is the shebang which tells the system how to execute
# the script
# As you already figured, comments start with #. She bang is also a comment

# Simple Hello World example
echo "Hello World"

# Each command starts on a new line, or after a semicolon:
echo "This is the first command"; echo "This is the second command"

# Declaring a variable looks like this:
variable="Some string"

# [IMPORTANT]: Avoid adding spaces between the assignment of the variable
# eg. variable= "Some string" or variable = "Some string"




echo "$variable"
echo '$variable'

echo "${variable}"

echo "${variable/Some/A}"


