#!/bin/bash
# set ff=unix -- to ru
dir=$(find -name "*.sh")
for i in $dir 
do
	if [ -x $i ] # "/mnt/c/Users/WorkPC/IdeaProjects/Shell_Bash/Bash/2019A" 
		then
			echo "Plik $i ma prawo do wykonywania"
		else
			echo "Plik $i nie morze sie wykonac!"
	fi
done
#echo "${dir}"

