#!/bin/bash
input="listofURL_newForwget_8740.txt"
c=0
while IFS= read -r line
do
c=`expr $c + 1`
echo "fetching from $line and storing in $c.html"
wget $line -O $c.htm -T 30 -t 2
done < "$input"
