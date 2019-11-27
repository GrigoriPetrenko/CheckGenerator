#!/bin/bash
if [ -z "$1" ] 
then
	echo "No any arguments"
	exit 1
elif [ $# -ne 1 ]
then
	echo "Onli one argument have to be"
	exit 1
fi
num=$1

functionFibonachi(){
fibo=0
fib1=1
if [ $1 -eq ${fibo} ]
then
	echo "$1 wyraz ciagu = 0"
       exit 0
fi
if [ $1 -eq ${fib1} ]
then
	echo "$1 wyraz ciagu = 1"
	exit 0
fi

for ((i=2; i<=$1; i++))
do
	let fib=${fib1}+${fibo}
fibo=${fib1}
fib1=${fib}
done

echo "$1 wyraz ciagu fibonacziego = ${fib}"
}

functionFibonachi ${num}