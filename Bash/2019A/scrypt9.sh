#!/bin/bash
#dzialanie=$1

for dzialanie in $@;
do
		if ( grep -qE '[\*\+\/\-](|)' <<< $dzialanie ) #czy dzialanie zawiera *;+;/ lub -
				then #jezeli tak
				ZNAK=$(sed -r 's/(.+)([\*\+\/\-])(.+)/\2/' <<< "$dzialanie") #przypisanie znaku do zmiennej
				awk -F"[*+/-]" -v zn=$ZNAK '{ #usuwanie znaków jako delimiter

					if ( NF != 2 ) { print "Nalezy przekazac dokladnie dwie liczby"; exit 1; } else { print "Przekazano znak!", zn} 
					for ($i=1; i<=NF; i++){
						if ($i !~ /^[0-9]+$/) {
							print i,"Liczba ("$i")","jest nieprawidlowa";
							exit 1;
						}
					}
					dzialanie=$1 zn $2;
				
					if ( zn == "*" ) { wynik=$1*$2; print dzialanie, "*", wynik }
					else if ( zn == "/" ) { wynik=$1/$2; print dzialanie, "/", wynik }
					else if ( zn == "+" ) { wynik=$1+$2; print dzialanie, "+", wynik }
					else { wynik=$1-$2; print dzialanie, "-", wynik }
				}
				END { print "Koniec\n================================== "}' <<< $dzialanie
		else
			echo "ZNAK JEST NIEPRAWIDLOWY"
		fi;
done;
