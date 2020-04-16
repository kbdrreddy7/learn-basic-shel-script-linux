#! usr/bin/bash

NAME="Brad"

# SIMPLE IF STATEMENT
if [ $NAME == "Brad" ]
then
  echo "Your name is Brad"
fi

 NAME="Jack"

# IF-ELSE
if [ "$NAME" == "Brad" ]
then
  echo "Your name is Brad"
else 
  echo "Your name is NOT Brad"
fi

NAME="Ram"

# ELSE-IF (elif)
if [ "$NAME" == "Brad" ]
then
  echo "Your name is Brad"
elif [ $NAME == "Jack" ]
then  
  echo "Your name is Jack"
else 
  echo "Your name is NOT Brad or Jack"
fi



# COMPARISON

########
: '
val1 -eq val2 Returns true if the values are equal
val1 -ne val2 Returns true if the values are not equal
val1 -gt val2 Returns true if val1 is greater than val2
val1 -ge val2 Returns true if val1 is greater than or equal to val2
val1 -lt val2 Returns true if val1 is less than val2
val1 -le val2 Returns true if val1 is less than or equal to val2

'
########
NUM1=31
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
  echo "$NUM1 is greater than $NUM2"
else
  echo "$NUM1 is less than $NUM2"
 fi




# FILE CONDITIONS

 ########
 : '
-e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
-d file   True if the file is a directory
-f file   True if the provided string is a file
-s file   True if the file has a non-zero size
-g file   True if the group id is set on a file
-u    True if the user id is set on a file
-r file   True if the file is readable
-w    True if the file is writable
-x    True if the file is an executable

 '
########

FILE="../help.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does NOT exist"
fi
