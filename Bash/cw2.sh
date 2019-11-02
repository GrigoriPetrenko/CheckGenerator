#!/bin/bash

file=$1
if [ "$#" -eq 1 ] 
then
	if [ -f "$file" ]
		then
			echo "$file is"
		else
			echo "$file isn't"
	fi
else
	echo "only one prametr have to be inputed"
fi
