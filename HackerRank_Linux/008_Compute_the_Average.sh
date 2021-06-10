#!/bin/bash
#sum=0
#read n
#while read -r line || [[ -n "$line" ]]; do
#    sum=$(($sum + $line))
#done
#printf "%.3f" $(echo "scale=10; $sum/$n" | bc -l)

read n
arr=($(cat)) 
arr=${arr[*]}
printf "%.3f" $(echo $((${arr// /+}))/$n | bc -l)





#input: 100
#9829
#8093
#8839
#4794
#7444
#7590
#1684
#9283
#7603
#6751
#7100