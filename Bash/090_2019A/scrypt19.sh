#!/bin/bash
num=10

functionFibonachi(){

fibo=0
fib1=1
m=2

echo " Do ciagu Fibonaciego podano $num liczb "
sleep 2
echo " Pierwsza licba $fibo "
while (( $m <= 10 ))
do
	let fib=${fib1}+${fibo}
	sleep 2
	echo "Kolejan liczba $fib"
	let fibsum+=$fib
	fibo=${fib1}
	fib1=${fib}
	((m++))

done
echo "koniec"
echo "Suma liczb ciągu Fibonaciego = $fibsum "

}

functionFibonachi ${num}
