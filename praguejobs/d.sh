#!/bin/bash
#for i in `cat c` 
#do 
#	cat -n $i
#done
#
while read file
do
	cat -n $file|grep -i three|awk '{print $1}'
	sed -i -e `cat -n $file|grep -i three|awk '{print $1}'`'s/^/<!-- /' $file
	sed -i -e `cat -n $file|grep -i three|awk '{print $1}'`'s/$/ -->/' $file
done < c
