#!/bin/bash

read -p "input X: " x;
read -p "input Y: " y;

function mySolution (){
if [[ $1 -eq $2 ]]
    then
        echo "X is equal to Y"   
    else
        if [[ $1 -gt $2 ]]
            then
                echo "X is greater than Y"
            else
                echo "X is less than Y "
        fi
fi
}

#mySolution $x $y

function betterSolution () {
    [[ $1 -eq $2 ]] && echo "X is equal to Y"
    [[ $1 -gt $2 ]] && echo "X is greater than Y"
    [[ $1 -lt $2 ]] && echo "X is less than Y"
    
}

betterSolution $x $y