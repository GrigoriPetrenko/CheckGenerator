#!/bin/bash
ARRAY=()
while true
do
	read -p "Insert name: " name
	if [ "${name}" != "koniec" ]
	then
		ARRAY+=(${name})
	else
		break
	fi
done
echo ${ARRAY[*]}

echo ${#ARRAY[*]}
echo "Input the number to count the name namber"

for i in ${!ARRAY[*]}
do
	echo -ne "${ARRAY[${i}]}($i) "
done
read index

#if index one of lements of ARRAY

if [ ${index} -le ${#ARRAY[*]} ]
then
	echo "The name: ${ARRAY[${index}]}, langht ${#ARRAY[${index}]}"
else
	echo "You inputed uncorrect index"
fi
#Another informations

echo -e "\n Elements of ARRAY: ${ARRAY[*]}"
echo " Index: ${!ARRAY[*]}"
# used in for
echo "How many an elements in table: ${#ARRAY[*]}"
echo "The length of the ferst element of table ${ARRAY[0]} is: ${#ARRAY[0]}" 
