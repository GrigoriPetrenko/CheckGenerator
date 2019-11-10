#!/bin/bash 
file=$1; 
if [ "$#" -eq 1 ]; then
	if ! [ -f "${file}" ]; then
		echo "Plik ${file} nie istnieje i zostanie utworzony w katalogu";
		#utworzenie pliku z testowym tekstem
		touch ${file};
	       	echo "test test test" >> ${file};
	else echo "Plik ${file} istnieje";
	fi;
else echo "Dokładnie jeden parametr jest wymagany"; 
fi;
