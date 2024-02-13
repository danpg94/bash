#!/usr/bin/env bash

echo "enter a number"
read a
echo "enter another number"
read b

if [[ a > b ]]; then
	echo "${a} is bigger than ${b}"
else
	echo "${b} is bigger than ${a}"
fi
