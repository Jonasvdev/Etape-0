#!/bin/bash  
n=$1
for i in $(seq -w 1 $n) 
do 
  mkdir -p ex_$i 
done
