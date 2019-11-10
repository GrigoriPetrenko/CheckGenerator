#!/bin/bash
for k in $*
do
	wynik="$k $wynik"
done
echo $wynik
