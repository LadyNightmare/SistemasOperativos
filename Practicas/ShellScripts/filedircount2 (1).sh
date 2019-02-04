#!/bin/bash

#Autora: Cristina Díaz García
#Grupo: Informática D

for i in $1* 
do
	if [ -d "$i" ] 
	then 
		FILES=`ls -l "$i" | wc -l`
		FILES2=`expr $FILES - 1`
		if [ $FILES2 -eq -1 ]
		then
			FILES2=0
		fi
		echo "$i: $FILES2" # Muestra el nombre del directorio y el número de
		# entradas que hay en él
	fi
done
