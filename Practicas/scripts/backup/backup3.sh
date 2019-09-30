#!/bin/bash

#Autora: Cristina Díaz García
#Grupo: Informática D

for j in `ls`
do
	if [ -d $j ] && [ $j == "backup" ]
	then
		Dir="backup"
	fi
done

if [ "$Dir" != "backup" ]
then
	`mkdir "backup"`
	Dir="backup"
fi

Date=`date +%y%m%d`

cd $Dir
for k in `ls`
do
	if [ -d $k ] && [ $k == $Date ]
	then
		Ex="y"
	fi
done

if [ "$Ex" != "y" ]
then
	`mkdir $Date`
fi

cd ..
for i in $@
do
	if [ ! -f "$i" ]
	then
		echo $i no existe
	else
		cp $i `pwd`/$Dir/$Date
	fi
done
