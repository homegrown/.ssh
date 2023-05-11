#!/bin/bash

clear
echo "Which staff keys do you want to delete?"
echo ""
echo "1) Andrew Kennett"
echo "2) Paul Stuffins"
read staff

case "$staff" in
    '1') staff=andrew.kennett@homegrowntechnology.co.uk ;;
    '2') staff=paul.stuffins@homegrowntechnology.co.uk  ;;
esac

echo "Deleting specified keys."
sleep 3
sed -i /$staff/d ~/.ssh/authorized_keys
echo "Specified keys have been deleted from the authorised keys file."
