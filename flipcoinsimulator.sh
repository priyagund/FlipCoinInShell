#!/bin/bash -x
head=1
tail=0
countHead=0
countTail=0

declare -A coins
echo  "enter noOf time flipcoin"
read flipcoin
noOfTime=$flipcoin
while  [ $flipcoin -gt 0 ]
 do
 ResultCheck=$((RANDOM %2))

   if [ $ResultCheck -eq 1 ]
      then 
      coins[$((countHead++))]="Head"

  else 
    coins[$((countTail++))]="Tail"
    
  fi
flipcoin=$(($flipcoin - 1))
done

headPer=$(($countHead*100/$noOfTime))
tailPer=$(($countTail*100/$noOfTime))
echo ${coins[@]}

echo "headPer :$headPer ,tailper :$tailPer"
