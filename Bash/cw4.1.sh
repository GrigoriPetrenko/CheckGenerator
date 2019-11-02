#!/bin/bash
read -p "Podaj link do pliku:" link1
#if [ -e ~/.bashrc ]
if [ -e "$link1" ]
then
	echo "Masz plik $link1"
else
	echo "Nie masz pliku $link1"
fi
