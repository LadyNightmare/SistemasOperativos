#!/bin/bash

#Autora: Cristina Díaz García
#Grupo: Informática D

for i in `ls -S | find $1 -type f`
do
	if [ `stat -c%s $i` -ge $2 ]
	then
		echo $i: `stat -c%s $i` bytes
	fi
done
