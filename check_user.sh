creds=""
match=false
while read data; do creds+=$data ; done < 'input.txt'
echo "Enter your creditionals: "
while [[ true ]]
do
  printf %s "Login: "
  read username
  printf %s "Password: "
  read password
  if [[ $creds == $username$password ]] ; then
    break
  else
    echo "Error. Try again."
  fi
done
echo "Access granted."
