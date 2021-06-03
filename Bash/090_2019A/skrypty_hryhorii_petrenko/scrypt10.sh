#!/bin/bash
read -p "Podaj licbe naturalną: " parametr1
read -p "Podaj licbe drugą naturalną: " parametr2
if (( "$parametr1" == "$parametr2" || "$parametr1" > "$parametr2" ))
then
	echo "$parametr1 >= $parametr2"
else
	echo "$parametr1 < $parametr2"
fi

function exitcode () {
if [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]
then
	echo "Parametry są porawne"
	#exit 0
	
else
	echo "error"
	exit 1
fi

}

exitcode $parametr1 $parametr2 

function scrypt8 () {
echo "=============================="
echo "To jest wynnik dzialania scryptu 8" 
echo "=============================="

"./scrypt8.sh" $1 $2 

}

scrypt8 $parametr1 $parametr2

exit 0 
