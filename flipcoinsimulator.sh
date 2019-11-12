#!/bin/bash -x
echo "no of coin :coins"
read coins
echo "no of time flip coin:noOfFlip"
read noOfFlip
head=0
tail=0
headCount=0
tailCount=0

declare -A Coins
function getCoin()
{

for (( i=1; i<=$noOfFlip; i++ ))
do
    str=""
   for (( j=1; j<=$coins; j++ ))
    do  
      randomCheck=$(( RANDOM % 2 ))
      if [ $randomCheck -eq 1 ]
      then 
      	str=$str"H"
      	((headCount++))
      else 
      	str=$str"T"
      	((tailCount++))
      fi
    done
echo final key : $str
Coins["$str"]=$(( ${Coins["$str"]} + 1 ))   
done
}

getCoin  
echo "${!Coins[@]} : ${Coins[@]}"




