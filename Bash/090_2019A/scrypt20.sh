#!/bin/bash

#IFS=$'\n'

tablica=($@)
uniq=($(printf "%s\n" "${tablica[@]}" | sort -u))

echo "Do tablicy przekazano takie parametry: ${tablica[@]}"
echo "Pokazano: ${#tablica[@]} elemntów"
echo "Pierwszy element: ${tablica[0]}, przedostatni  ${tablica[@]:(-2):1}"
echo "Unikatowe elementy: , ich ilość "
echo "Unikatowe elementy: ${uniq[@]}, ich ilość ${#uniq[@]}"

for ((i=0; i < ${#tablica[@]}; i++))
do
#	echo "$i"
	if [[ ${tablica[$i]} =~ ^-?[0-9]+$ ]] 
		then
			echo "Pierwszy element z liczbą naturalną: ${tablica[$i]}"
			exit 0
	fi
done
