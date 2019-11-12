#!/bin/bash -x
HH=0
HT=0
TT=0
TH=0
tail=0
countHead=0
countTail=0

declare -A coins
echo  "enter noOf time flipcoin"
read flipcoin
noOfTime=$flipcoin
while  [ $flipcoin -gt 0 ]
 do
 ResultCheck1=$((RANDOM %2))
 ResultCheck2=$((RANDOM %2)) 
   if [[ $ResultCheck1 -eq 0 && $ResultCheck2 -eq 0 ]]
      then 
      coins[$((HH++))]="HeadHead"
   elif [[ $ResultCheck1 -eq 0 && $ResultCheck2 -eq 1 ]]
   then
       coins[$((HT++))]="HeadTail"
    
   elif [[ $ResultCheck1 -eq 1 && $ResultCheck2 -eq 0 ]]
   then
       coins[$((TH++))]="TailHead"

  else 
    coins[[ $((countTail++)) ]]="TailTail"
    
  fi
flipcoin=$(($flipcoin - 1))
done

headHeadPer=$(($HH*100/$noOfTime))
headTailPer=$(($HT*100/$noOfTime))
TailHeadPer=$(($TH*100/$noOfTime))
TailTailPer=$(($TT*100/$noOfTime))
echo ${coins[@]}

echo "HH % :$headHeadPer ,HT % :$headTailPer ,TH : $TailHeadPer ,TT % : $TailTailPer"
