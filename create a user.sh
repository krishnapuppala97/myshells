#!/bin/bsah
echo "enter a user name"
read username
sudo useradd  $username
echo "enter the password for the user"
sudo passwd $username
cat /etc/passwd | grep $username
if [ $? -eq 0 ]
then
echo " $username is created"
else
echo "$username is not created"
fi
