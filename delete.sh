#!/bin/bash
clear
echo "Which staff keys do you want to delete?"
echo ""
echo "agk: Andrew Kennett"
echo "pks: Paul Stuffins"
echo ""
read staff

clear
echo "Deleting specified keys."
sed -i /$staff/d ~/.ssh/authorized_keys
sleep 1
echo "Specified keys have been deleted from the authorised keys file."
