#!/bin/bash
clear
username=$USER

echo "Which SSH keys are you wanting to install to this server?";
echo "";
echo "1) Desktop key";
echo "2) Laptop key";
echo "3) Desktop & laptop keys";
echo "";
read number

if [ "$number" == '1' ]; then
    echo "Downloading keys"
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/desktop.pub
    sleep 3
    echo "Installing keys"
    cat desktop.pub >> ~/.ssh/authorized_keys
    sleep 3
    rm -f wget-log
    rm -f desktop.pub
    echo "Desktop keys have been added to the authorised keys file.";
fi

if [ "$number" == '2' ]; then
    echo "Downloading keys"
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/laptop.pub
    sleep 3
    echo "Installing keys"
    cat laptop.pub >> ~/.ssh/authorized_keys
    sleep 3
    rm -f wget-log
    rm -f laptop.pub
    echo "Laptop keys have been added to the authorised keys file.";
fi

if [ "$number" == '3' ]; then
    echo "Downloading keys"
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/desktop.pub
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/laptop.pub
    sleep 3
    echo "Installing keys"
    cat desktop.pub >> ~/.ssh/authorized_keys
    cat laptop.pub >> ~/.ssh/authorized_keys
    sleep 3
    rm -f wget-log
    rm -f desktop.pub
    rm -f laptop.pub
    echo "Desktop & laptop keys have been added to the authorised keys file.";
fi
