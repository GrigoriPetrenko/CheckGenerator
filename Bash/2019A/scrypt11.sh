#!/bin/bash
# set ff=unix -- to run
for i in $(ls -l) 
do
	if [ -w "/mnt/c/Users/WorkPC/IdeaProjects/Shell_Bash/Bash/2019A" ]
		then
			echo "Plik $i ma prawo do wykonywania"
		else
			echo "Plik $i nie morze sie wykonac!"
	fi
done
