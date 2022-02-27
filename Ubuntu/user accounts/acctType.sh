echo "enter the name of the user whose account type you want to change"
read user

echo "enter the new account type for $user (standard or admin)"
read acctType
if [ $acctType = "standard" ]
then
    usermod -L $user

elif [ $acctType = "admin" ]
then
    usermod -G sudo $user
    
else
    echo "invalid account type"
fi
