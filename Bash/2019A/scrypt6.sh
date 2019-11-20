#!/bin/bash
if (( $# > 0 ))
then
	if [[ -d $1 ]]
	then
			echo "Katalog $1 istnieje"
	else
			echo " Katalog $1 nie istnije, ale zostanie utworzony w folderze $(pwd)"
		$(mkdir $1) 
	fi
else
	echo " Nie podalesz zadnego parametru"
fi
