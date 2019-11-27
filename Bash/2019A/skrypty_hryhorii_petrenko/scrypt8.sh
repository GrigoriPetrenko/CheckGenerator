#!/bin/bash

int="^-?[0-9]+$"

#echo $int

if [[ "$1" =~ ${int} || "$2" =~ ${int} ]]   
#if [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]  

then
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
else
	echo " one of parameters not integer "
fi
