#!/bin/bash
clear
echo "Which staff keys do you want to install?"
echo ""
echo "agk: Andrew Kennett"
echo "pks: Paul Stuffins"
echo ""
read staff

clear
echo "Installing specified key."
cat keys/$staff.pub >> ~/.ssh/authorized_keys
sleep 1
echo "Specified key has been added to the authorised keys file."
