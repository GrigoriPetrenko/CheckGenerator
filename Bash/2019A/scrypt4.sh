#!/bin/bash

if [[ $# < 3 ]]
	then
		echo "Minimum wymagane 3 parametry"
	else
		echo "Melduje, ze przyjalem $# parametrow."
		echo "Pierwszy: $1, trzeci: $3."
		echo "Wszystkie: $@ "
		
		echo "To mowilem ja: $0"   

		echo "Znajduje sie tutaj: $(pwd)"
	#	echo "Znajduje sie tutaj: $(pwd)$(0)"
fi
