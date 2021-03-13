

score1=65
score2=80
if [ $score1 -eq 55 -o $score2 -eq 80 ]  # only one []
then
  echo "You have passed"
else
  echo "You have failed"
fi

echo --------------------------------------------

ticket=782


if [[ $ticket = 101 || $ticket = 780 ]]   # two [] for logical operators
then
  echo "You have won the ticket"
else
  echo "Try again"
fi


echo --------------------------------------------


sub1=maths
if [ $sub1 = "maths" ] || [ $sub1 = "physics" ]
# if [[ $score1 = "maths" || $score2 = "physics" ]]  # two [] for logical operators
# if [ $score1 = "maths" ] || [ $score2 = "physics" ]
then
  echo "Science subjects"
else
  echo "non-Science subjects"
fi



: '


read -p "Enter name:" name

if [ !$name ]; then
  echo please enter a proper name
fi


read -p "Enter your salary:" salary
read -p "Do you have a credit card (y/n):" has_credit_card

if [[ $salary >= 20000 || $has_credit_card = 1 ]]; then # ||   # $salary -gt 20000  # $has_credit_card == "y"
   echo "Congrats $name, you are eligible for loan above 4 lac"
elif [ $salary -ge 15000  ]; then # && $has_credit_card -eq "y"
   echo "Congrats $name, you are eligible for loan above 2 lac"
else  echo " Sorry $name, you are not eligible for loan"  
fi 


'


