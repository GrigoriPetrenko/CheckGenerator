#!/bin/bash

read -p "input X: " x
read -p "input Y: " y
read -p "input Z: " z

function mySolution (){
 
 if (( $1 % $2 == 0 )) && (( $2 % $3 == 0 )) && (( $1 == $3 ))
    then
        echo "EQUILATERAL"
    else
        if (( $1 / $2 != 1 )) && (( $2 / $3 != 1 )) && (( $1 / $3 != 1 ))
        then
            echo "SCALENE"
        else
            echo "ISOSCELES"
        fi
 fi       
}

mySolution $x $y $z