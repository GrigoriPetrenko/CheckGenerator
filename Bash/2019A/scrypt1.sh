#!/bin/bash

zmienna=$(whoami)
#echo " $zmienna"


read -p "Podaj Uzytkownika: " uzytkownik

if [[ $uzytkownik == $zmienna ]]
	then
		echo "Nie jestes rootem, a jestes ${uzytkownik}"
elif [[ $uzytkownik == "root" ]]
	then
		echo "jestes rootem"	
else
		echo "Bledny username"
fi
