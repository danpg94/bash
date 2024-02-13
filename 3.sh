#!/usr/bin/env bash

# Commands can be substituded within other commands using $( ):
# The following command displays the number of files and directories in the
# current directory.
echo "There are $(ls | wc -l) items here."

# The same can be done usingg backticks `` but they can't be nested
# The prefered way is to use $( ).
echo "There are `ls | wc -l` items here."

# Bash uses a `case` statement that works similarly to switch in Java and C++.
case "$Variable" in
	0) echo "There is a zero.";;
	1) echo "There is a one.";;
	*) echo "It is not null.";;
esac

# `for` loops iterate for as many arguments given:
# The contents of $Variable is printed three times.
for Variable in {1..3}
do
	echo "$Variable"
done

echo ""

# Or write it he "traditional for loop" way:
for ((a=1; a<=3; a++))
do
	echo "$a"
done

# They can also be used to act on files..
# This will run the command `cat` on file1 and file2
for Variable in file1 file2
do
	cat "$Variable"
done

# ..or the output from a command
# This will `cat` the output from `ls`
for Output in $(ls)
do
	cat "$Output"
done

# Bash can also accept pattern, like this to `cat`
# all the Markdown files in current directory
for Output in ./*.markdown
do
	cat "$Output"
done


# while loop:
while [ true ]
do
	echo "loop body here..."
	break
done

# You can also define functions 
# Definition:
function foo ()
{
	echo "Arguments work just like script arguments: $@"
	echo "And: $1 $2..."
	echo "This is a function"
	returnValue=0 # Variable values can be returned
	return $returnValue 
}

# Call the function `foo` with two arguments, arg1 and arg2:
foo arg1 arg2

# Return values can be obtained with $?
resultValue=$?
# More than 9 arguments are also possible by using braces, e.g. ${10}, ${11}, ...

# or simply
bar ()
{
	echo "Another way to declare functions!"
	return 0
}

# call the function `bar` with no arguments:
bar 

# Calling your function
foo "My name is" "Daniel"


