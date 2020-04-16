#! usr/bin/bash


# USER INPUT
 read -p "Enter your name: " NAME
 echo "Hello $NAME, nice to meet you!"

 echo "entere age"
  read AGE
  echo "Your age is $AGE"


: '
  default 
      stdin -> ketboard
      stdout -> console


----------redirectig  output----------------
   ">"  to redirect/chnage output path   (override)
   ">>" to redirect/chnage output path   (append)

'

ls -al > new-out.txt  # redirecting the out put to file (override)

echo hello >>new-out.txt # redirecting the output (append mode)


: '

------------redirecting input-------------
 "<" to redirect input

  eg: Mail -s "subject" to -address < filName

   file content is redirected to mail
   Mail is program to send mails from terminal
'
# eg:2

read line < new-out.txt   # it'll read only first line 
echo $line

# to read entire file and assign to variable
line=$(< new-out.txt)     # no space before and  after the '='  i.e  line = $(<fileName)
                          #  line=(< new-out.txt)  also works
                          # value=`cat config.txt`   // another way 

echo $line


: '

using redirecting for File descripters (FD)
-------------------------------------------
 Every file ( file/dir/application) has three FD
  3 FDs: 0->stdin, 1->stdout ,3->stderror

  refer https://www.guru99.com/linux-redirection.html

 $ programName 2>errorLogFile
    // here program error is redirected to file   
    // here 2 means program error
'

chmod u=wx  new-no-read.txt   # no read access

cat new-no-read.txt 2>>new-out.txt   # error is redirected to file ( append)


cat new-no-read.txt >> new-out.txt 2>>&1

 : '
 here cat output is redirected to new-out.txt
 cat  error is redirected to cat output
 cat output is redirected to new-out.txt
 
   // error is redirected as output

 ' 

