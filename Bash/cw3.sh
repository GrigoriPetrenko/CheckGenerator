#!/bin/bash
echo "Files:"
for a in $(ls -l)
do	
	if [ -f "${a}" ]
		
	then
		echo "${a}"
	else
		echo "No files in this directory"
	fi
done
for b in $(ls -l)
do
	if [ -d "${d}"]
	then
		echo "${b}"
	else
		echo "No folders in this directory"
	fi
done
