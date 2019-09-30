#!/bin/bash

#Autora: Cristina Díaz García
#Grupo: Informática D


if [ !-d "backup" ]
then
	`mkdir 'bakcup'`
fi


Date=`date +%y%m%d`

cd $Dir
if [ !-d $Date ]
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
