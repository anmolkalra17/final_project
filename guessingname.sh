function try {
if [[ $guess -ne $value ]]
 then
  if [[ $guess -lt $value ]]
   then
    echo "Your value is less than the files, try again!"
    flag=0
   elif [[ $guess -gt $value ]]
    then
     echo "Your value is more than the files, try again!"
     flag=0
  fi
 else
 flag=2
fi
}

value=$(ls -1|wc -l)
echo "How many files are there in this directory? Enter your guess."
while [[ $flag -eq 0 ]]
do
 read guess
 try
done

if [[ $flag -ne 1 ]]
 then
  echo "Congratulations, you are right."
fi
