echo "do you want to add or delete a group? (add/delete)"
read addDel
if [ $addDel = "add" ]
then
    echo "enter the name of the group you want to add:"
    read group
    sudo addgroup $group
    echo "added $group"
else
    echo "enter the name of the group you no longer want to be a member of:"
    read group
    sudo delgroup $group
    echo "removed $group"
fi

echo "do you want to add or delete a user to a group? (add/delete)"
read addDel
if [ $addDel = "add" ]
then
    echo "enter the name of the user you want to add to a group:"
    read user
    echo "enter the name of the group you want to add the user to:"
    read group
    sudo adduser $user $group
    echo "added $user to $group"
else
    echo "enter the name of the user you no longer want to be a member of a group:"
    read user
    echo "enter the name of the group you no longer want to be a member of:"
    read group
    sudo deluser $user $group
    echo "removed $user from $group"
fi
