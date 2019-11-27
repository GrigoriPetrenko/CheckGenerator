#!/bin/bash
tablica=($@)
echo "Do tablicy przekazano takie parametry: ${tablica[@]}"
echo "Pokazano: ${#tablica[@]} elemntów"
echo "Pierwszy element: ${tablica[0]}, przedostatni  ${tablica[@]:-2:1}"
echo "Unikatowe elementy: , ich ilość "
unique="(${tablica[@]}" | (tr ' ' '\n'))" #| sort -u | tr '\n' ' ' \)"

for ((i=0; i < ${#tablica[@]}; i++))
do
	echo "$i"
	
#	if [[ ${wszystkie[$i]} =~ ^[0-9]+$ && -z ${FIRST+x} ]]
#	then
#	echo "Pierwszy element zawierający liczby naturalne to: ${wszystkie[$i]}"
#	FIRST=${wszystkie[$i]};
#	elif [[ ${wszystkie[$i]} =~ ^[^0-9]+$ ]]
#	then
#	if [[ ${wszystkie[$i]} != ${AKTUALNY} ]]
#	then
#	POPRZEDNI=$AKTUALNY
#	AKTUALNY=${wszystkie[$i]}
#	fi
#	fi
done
#echo "Przedostatni element tablicy zawierający dowolne litery/znaki: $POPRZEDNI";
