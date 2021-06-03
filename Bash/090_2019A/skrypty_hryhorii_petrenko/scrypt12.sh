#!/bin/bash

#count=$(wc -l $1 | awk '{print $1)')
count=$(wc -l < $1)
echo "Plik $1 ma  $count linii"
if [[ $count < $2 ]]
then 
	echo "Liczba  przekroczona"
fi
