#! /usr/bin/bash

: '

-----wild cards--------
  .  any char
  ^  match starts with
  $  ends with
  *  zero or more times
  \  representing special char
  ()  group regex
  ?   exactly one char  

----------- Internal Regex----------
  {n}   n times exactly  
  {n,m}  n to m times ( not more than m)
  {n,}   n or more times
   
------------Extended Regex------------

  \+   one or more occurances
  \?   zero or one occurances

'

sample="sample.txt"

echo "***************   reading"

  cat $sample   # to read sample named file contents
 
 echo \n
echo  "*************** "

 cat $sample | grep t  # prints lines containing t

echo "***************"

 cat $sample | grep ^t  # starts with t

 echo "***************"

 cat $sample | grep t$  # ends with t

 echo "***************"

 cat $sample | grep -E t\{2}  #  exactly two times   // -E is required


  echo "***************"


 cat $sample | grep  "i\+t"

  echo "***************"

cat $sample | grep  "\+t"

