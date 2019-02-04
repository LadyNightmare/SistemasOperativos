#!/bin/bash

#Autora: Cristina Díaz García
#Grupo: Informática D

for i in $@
do
	if [ ! -f "$i" ]
	then
		echo $i no existe
	else
		A=$(ls $i* | wc -w)
		if [ $A -ge 9 ]
		then
			echo “Se ha superado el número máximo de versiones”
		else
			Num=`expr $A + 1`
			Date=`date +%y%m%d`
			Version=${Date}_$i
			cp $i $Version
		fi
	fi
done
