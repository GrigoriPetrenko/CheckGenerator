#!/bin/bash

read -p "Insert the directory:" directory
if [ -d $directory ];
then
	echo "The $directory is";
else
	echo "There is not any $directory";
fi
