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

# Using the variable:
echo "$variable"
echo '$variable'

# When you use a variable itself - assign it, export it, or else - you write 
# its name without $. If you want to use the variable's value, you should use $.
# Note that ' single quote won't expand the variables!
# You can write variable without surrounding quotes but its not recommended.

# Parameter expansion ${...}
echo "${variable}"
# This is a simple usage of parameter expansion such as the two samples above.
# Parameter expansion gets a value from a variable.
# It "expands" or prints the value.
# During the expansion time the value or parameter can be modified.
# Below are other modifications that add to this expansion.

echo "${variable/Some/A}"
# This will subsitute the first occurence of "Some" with "A".

# Substring from a variable:
length=7
echo "${variable:0:length}"
# This will return only the first 7 characters of the value

echo "${variable: -5}"
# This will return the las 5 characters (note the space before -5).
# The space before minus is mandatory here.


# String length
echo "${#variable}"

# Indirect expansion
other_variable="variable"
echo ${!other_variable}

