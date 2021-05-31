#!/bin/bash
read -p "input X: " x;
read -p "input Y: " y;

function containing (){
    summ=$(($1 + $2))
    echo $summ
    subtract=$(($1 - $2))
    echo $subtract
    multiply=$(($1 * $2))
    echo $multiply
    share=$(($1 / $2))
    echo $share
}

#containing $x $y

function betterSolution () {
    for i in {+,-,'*',/}
    do
        answer=$"($1)$i($2)"
        echo $answer | bc
    done
}

#betterSolution $x $y

function anotherBetterSolution (){
    printf "%s\n" $1{+,-,*,/}"($2)" | bc
}

anotherBetterSolution $x $y