#!/bin/bash



while read -r  line
do
 if [[ ${#line} -lt 50 ]]; then 
		echo " ${#line} ${line}  "
	fi

done < ~/Desktop/ATOS2019/Students.txt

