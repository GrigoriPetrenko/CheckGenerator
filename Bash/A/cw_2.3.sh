#!/bin/bash

if [ $# = 0 ]
then
	read -p "Input the file name: " file
	
	if [ -f $file ]
	then
		echo "file $file is"
	else
		echo "file $file isn't"
	fi	
else
	if [ -f $1 ]

	then

		echo "file $1 is"
	else
		echo "file $1 is"
	fi
fi
