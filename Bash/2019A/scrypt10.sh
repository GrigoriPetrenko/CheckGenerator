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
	echo "Program przestaje dzilac dalej przy uzyciu EXIT"
	#exit 0
else
	echo "error"
fi

#else
#	case "$2" in
#		[a-z] ) echo "there are chars";;
#		[A-Z] ) echo "there are chars";;
#		* ) echo "there are other chars";;
#	esac
#	# a b s 10-24
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
