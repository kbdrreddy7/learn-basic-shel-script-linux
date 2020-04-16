#! usr/bin/bash

# https://bash.cyberciti.biz/guide/While_loop



# set n to 1
n=1

# continue until $n equals 5
while [ $n -le 5 ]
do
	echo "Welcome $n times."
	n=$(( n+1 ))	 # increments $n
done


: '
ref https://bash.cyberciti.biz/guide/$IFS

  $IFS    Internal Field Separator (IFS)


  The default value is <space><tab><newline>. You can print it with the following command:
  cat -etv <<<"$IFS"


'
# eg-1

while IFS= read -r line
do
        # echo line is stored in $line
	echo $line
done < "./new-a.txt"


echo "**********************"

# eg:2

# set field separator to a single white space 
while IFS=' ' read -r f1 f2
do
	echo "field # 1 : $f1 ==> field #2 : $f2"
done < "./new-a.txt"

echo "**********************"

# eg-3

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-a.txt"



## eg-4



file="./new-b.txt"

: '
cyberciti.biz|202.54.1.1|/home/httpd|ftpcbzuser
nixcraft.com|202.54.1.2|/home/httpd|ftpnixuser
'
# set the Internal Field Separator to |
IFS='|'
while  read -r domain ip webroot ftpusername
do
        printf "domain $domain \t" 
        printf "ip $ip \t" 
        printf "webroot $webroot \t" 
        printf " ftpusername $ftpusername  \n"  

        echo " $domain $ip   $webroot $ftpusername"
	
done < "$file"

