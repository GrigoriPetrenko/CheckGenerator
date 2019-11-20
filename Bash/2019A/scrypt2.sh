#!/bin/bash

IFS=$'\n'

licznik=1

#for (( i=1; i < $( wc -l < /home/student01/commands/Students.txt); i++ ))
for i in $(tac ~/Desktop/ATOS2019/Students.txt )
do
	echo  "Line nr $licznik: $i " 
	licznik=$((licznik+1)) 

	#echo $(cat /home/student01/commands/Students.txt)
done

echo "sposub 2"

licznik=1

while read -r linia 
do 
	echo "Linia nr $licznik: $linia"
	licznik=$((licznik+1)) 
done < <(sed '$d' ~/Desktop/ATOS2019/Students.txt )
	
