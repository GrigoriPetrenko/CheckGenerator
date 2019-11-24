#!/bin/bash

#int=$(^-?[0-9]+$)

if ! [[ "$1" =~ ^-?[0-9]+$ ]]   #   [[ "$1" =~ "^[0-9]+$" && "$2" =~ "^[0-9]+$" ]]
then
	echo "the first parameter has to be an integer"
#elif ! [[ "$2" =~ ^[0-9}+$ ]]
#then
#	echo "the second parameter has to be integer too"
# else	"the parameters have to be an integer" 
else 

	argument_one=$1
	argument_two=$2
	sum=$(( $argument_one + $argument_two ))
	multiply=$(( $argument_one * $argument_two ))

	echo "The sum of arguments $sum"
	echo "The argument multiplication $multiply"

	function SumFunction(){
		sumfunct=$(( $1 + $2 ))
		echo " The sum of arguments $sumfunct "

		}
	SumFunction argument_one argument_two

	function MultiplyFunction(){
		mufunc=$(( $1 * $2 ))
		echo " The argument multiplication $mufunc "
		}	
	MultiplyFunction argument_one argument_two
fi
