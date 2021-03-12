
## https://www.tutorialspoint.com/unix/if-fi-statement.htm

read -p 'enter age:' age  ## age=19

min_age=18

if [ $age -gt $min_age ]    # if [ $age -gt 18 ]
  then echo "$age eligible for loan"
fi     


echo ==================== multi line  ===================================
echo '==================== multi line if  $min_age ==================================='
echo "==================== multi line if $min_age ==================================="


if [ $age -gt $min_age ]; then  
   echo "$age eligible for loan 1"
   echo "$age eligible for loan 2"
fi     


echo "====================  if-else ==================================="


if [ $age -gt $min_age ]    # if [ $age -gt 18 ]
  then echo "$age eligible for loan"
else   echo "$age not-eligible for loan"
fi     


: '




a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi

'