
# Relational Operators

: '
 this is working only for numbers/integers in both cases sh file.sh or ./file.sh
'

read -p "Give a nmber a:" a
read -p "Give another number b:" b

echo ---------------------gt----------------
if [ $a -gt $b ];then 
  echo "$a is greater then $b"
fi

echo ---------------------ge----------------
if [ $a -ge $b ];then 
  echo "$a is greater the or equal to $b"
fi

echo ---------------------lt----------------
if [ $a -lt $b ];then 
  echo "$a is less then $b"
fi

echo ---------------------le----------------

if [ $a -le $b ];then 
  echo "$a is less then or equal  $b"
fi

echo ---------------------eq----------------

if [ $a -eq $b ];then 
  echo "$a and $b are equal " 
fi

echo ---------------------ne----------------

if [ $a -ne $b ];then 
  echo "$a and $b are not equal " 
fi