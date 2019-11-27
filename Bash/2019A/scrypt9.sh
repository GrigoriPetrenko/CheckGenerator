#!/bin/bash

echo "===================================="
echo " "
for dzialanie in $@;
do
	if ( grep -qE '[\*\+\/\-]{1}' <<< $dzialanie )
	then
	znak=$(sed -r 's/(.+)([\*\+\/\-])(.+)/\2/' <<< "$dzialanie")
	awk -F"[*+/-]" -v zn=$znak '{
	if ( NF != 2 ) {print "Należy przekazać dokładnie dwie liczby"; exit i; }
	else { print "przekazano znak: ", zn}
for (i=1; i<=NF; i++){
if ($i !~ /^-?[0-9]+$/){
print i, "Liczba ("$i")","jest nieprawidłowa";
exit 1;
}
}
dzialanie=$1 zn $2;
if ( zn == "*") { wynik=$1*$2; print dzialanie, "=", wynik}
else if ( zn == "/") { wynik=$1/$2; print dzialanie, "=", wynik}
else if ( zn == "+") { wynik=$1+$2; print dzialanie, "=", wynik}
else { wynik=$1-$2; print dzialanie, "=", wynik}
}
END { print "\n===================================" }' <<< $dzialanie
else
echo "Znak jest nieprawidłowy"
fi
done

