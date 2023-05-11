#!/bin/bash
clear
username=$USER

echo "Which SSH keys do you want to delete from this server?";
echo "";
echo "1) Desktop key";
echo "2) Laptop key";
echo "3) Desktop & laptop keys";
echo "";
read number

if [ "$number" == '1' ]; then
    echo "Deleting keys"
    sed -i '/Desktop/d' ~/.ssh/authorized_keys
    sleep 3
    echo "Desktop keys have been deleted from the authorised keys file.";
fi

if [ "$number" == '2' ]; then
    echo "Deleting keys"
    sed -i '/Laptop/d' ~/.ssh/authorized_keys
    sleep 3
    echo "Laptop keys have been deleted from the authorised keys file.";
fi

if [ "$number" == '3' ]; then
    echo "Deleting keys"
    sed -i '/Desktop/d' ~/.ssh/authorized_keys
    sed -i '/Laptop/d' ~/.ssh/authorized_keys
    sleep 3
    echo "Desktop & laptop keys have been deleted from the authorised keys file.";
fi
