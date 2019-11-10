#!/bin/bash 
# Przypisanie wyniku polecenia 'date' do zmiennej DATE, jest ono równoważne z przypisaniem DATE=`date`;
DATE=$(date) 
# Przykład zastosowania Parameter Expansion (PE). To wyrażenie usuwa najdłuższe dopasowanie do wzorca.Prościej mówiąc 'odcina' wszystkie poprzedzające elementy ścieżki bezwzględnej, w rezultacie pozostawiając samą nazwę skryptu z rozszerzeniem;
PROGNAME=${0##*/} 
# PE, wyrażenie w rezultacie którego rozszerzenie skryptu zostaje usunięte. Do zmiennej NAME zostaje przypisana sama nazwa skryptu. 
NAME=${PROGNAME%.*}; 
LOG="${NAME}.log" 
# wyświetlenie nazwy uruchomionego skryptu co dla polecenia 'tree' jest standardowym wejściem i przekazanie jej na standardowe wyjście w postaci pliku z rozszerzeniem '.log'. 
#echo "NAZWA SKRYPTU: ${PROGNAME}" | tee -a "${LOG}"  
echo "NAZWA SKRYPTU: ${PROGNAME}" >> "${LOG}"  
# wyświetlenie daty serwera oraz dopisanie wiersza z tymi danymi do pliku z rozszerzeniem '.log'.
#echo "SERVER DATE: ${DATE}" | tee -a "${LOG}"  

echo "SERVER DATE: ${DATE}" >> "${LOG}"  



