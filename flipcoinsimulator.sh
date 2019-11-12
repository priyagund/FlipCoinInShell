#!/bin/bash -x
head=0
tail=0
ResultCheck=$((RANDOM %2))
if [ $ResultCheck -eq 0 ]
 then 
 echo "head"
else 
 echo "tail"
fi
