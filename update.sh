#!/bin/bash
clear
username=$USER

if [ "$1" == '1' ]; then
    sed -i '/Desktop/d' ~/.ssh/authorized_keys
    sleep 1
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/desktop.pub
    sleep 1
    cat desktop.pub >> ~/.ssh/authorized_keys
    sleep 1
    rm -f wget-log
    rm -f desktop.pub
fi

if [ "$1" == '2' ]; then
    sed -i '/Laptop/d' ~/.ssh/authorized_keys
    sleep 1
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/laptop.pub
    sleep 1
    cat laptop.pub >> ~/.ssh/authorized_keys
    sleep 1
    rm -f wget-log
    rm -f laptop.pub
fi

if [ "$1" == '3' ]; then
    sed -i '/Desktop/d' ~/.ssh/authorized_keys
    sed -i '/Laptop/d' ~/.ssh/authorized_keys
    sleep 1
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/desktop.pub
    wget -b https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys/paulstuffins/laptop.pub
    sleep 1
    cat desktop.pub >> ~/.ssh/authorized_keys
    cat laptop.pub >> ~/.ssh/authorized_keys
    sleep 1
    rm -f wget-log
    rm -f wget-log.1
    rm -f desktop.pub
    rm -f laptop.pub
fi
