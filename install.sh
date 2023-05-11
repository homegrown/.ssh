#!/bin/bash
repo="https://raw.githubusercontent.com/homegrown/.ssh/trunk/keys"

clear
echo "Which staff member keys do you want to install?"
echo ""
echo "1) Andrew Kennett"
echo "2) Paul Stuffins"
read staff

clear
echo "Which device keys do you want to install?"
echo ""
echo "1) Desktop key"
echo "2) Laptop key"
read device

case "$staff" in
    '1') staff=andrewkennett ;;
    '2') staff=paulstuffins  ;;
esac

case "$device" in
    '1') device=desktop.pub ;;
    '2') device=laptop.pub  ;;
esac

clear
if wget -q $repo/$staff/$device; then
    echo "Downloading specified key."
    sleep 3
    cat $device >> ~/.ssh/authorized_keys
    echo "Installing specified key."
    sleep 3
    rm -f $device
    echo "Specified key has been added to the authorised keys file."
else
    echo "Failed to download specified key."
fi
