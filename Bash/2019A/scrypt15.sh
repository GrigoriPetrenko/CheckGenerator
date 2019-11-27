#!/bin/bash
katalog="zad_15"
mkdir ${katalog}
for i in {4..8}
	do
		#echo " text"
		touch ${katalog}/plik$i
		if (( $i % 2 == 0 ))
			then
			echo "Nazwa pliku jest liczba parzysta" > ${katalog}/plik$i
			else
            echo "Nazwa pliku jest liczba nieparzysta" > ${katalog}/plik$i
		fi
	done
