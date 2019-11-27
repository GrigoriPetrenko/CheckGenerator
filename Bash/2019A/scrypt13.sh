#!/bin/bash

read -r var1 var2 <<< $1
echo "$var1"
echo "$var2"
awk -F"|" '{
if ($7 > 80)
{ print $3, $2, "ma nadwagę" 
}else if ($7 == 71) { 
print $3, $2, "ma wagę idealną" 
} else { print $3, $2, "ma niedowagę"
} 
}' Students.txt