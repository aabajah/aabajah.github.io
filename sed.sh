#!/bin/bash
while read i
do
	cat -n $i|grep -i blog | awk '{print $1}' > l2
	for j in `cat l2`
	do
	sed -e '`cat l2|head -1`s;^;<!--  ;' $i
	done	
done < l1
