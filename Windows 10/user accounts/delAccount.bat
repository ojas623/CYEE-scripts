set /p acctName=What is the user you would like to delete?:
net user !acctName! /delete
echo !acctName! has been deleted