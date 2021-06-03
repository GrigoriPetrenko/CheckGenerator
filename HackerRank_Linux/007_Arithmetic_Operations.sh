#!/bin/bash

#input: 

read x
echo $x | bc -l | xargs printf "%.*f\n" 3