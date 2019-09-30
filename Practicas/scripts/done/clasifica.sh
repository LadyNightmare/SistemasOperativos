#!/bin/bash

#Autora: Cristina Díaz García
#Grupo: Informática D

cd $1
for i in `ls`
do
	for j in `ls`
	do
		if [ -d $j ] && [ $j == "`grep autor $i | cut -d ":" -f 2`" ]
		then
			Dir="`grep autor $i | cut -d ":" -f 2`"
		fi
	done
	if [ "$Dir" != `grep autor $i | cut -d ":" -f 2` ]
	then
		mkdir $2/`grep autor $i | cut -d ":" -f 2`
	fi
	cp $i $2/`grep autor $i | cut -d ":" -f 2`
done
