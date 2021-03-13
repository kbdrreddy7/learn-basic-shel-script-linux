
#! /usr/bin/bash


# Arithmetical Comparision Operators  =, ==, !=

: '
 Comparision operators are working in shell script ( as executable)
 working fine for both strings are integers

'

read -p "give string/number a:" a   
read -p "give another string/number b:" b

echo ---------------- = ---------------------
c=$b
echo " b value is assigned to c and it's value os $c"

echo ------------------ == ------------------

if [ $a == $b ]; then
  echo a and b both are equal 
fi

echo ------------------ != ------------------

if [ $a != $b ]; then 
   echo a and b are not equal
fi  

