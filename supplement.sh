#!/bin/bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

# validate wget installed

echo "check for wget"
echo "  "
echo "  "

sudo apt install wget -y > /dev/null 2>&1

echo "  "
echo "Glad thats done"
echo "  "
echo "implement part 1"

# create suspicious files
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/innocent.sh -P /home/ > /dev/null 2>&1
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/callme.sh -P /home/max/ > /dev/null 2>&1
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/energizer.php -P /tmp/ > /dev/null 2>&1
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/microsoftword.py.exe -P /home/sally/ > /dev/null 2>&1
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/innocent.sh -P /tmp/.gonnahidehere.sh > /dev/null 2>&1
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/nothingtoseehere.pl -P /home/.nothingtoseehere.pl > /dev/null 2>&1

echo "part 1 - Files updated . . . "
echo "  "

echo "implement part 2"
echo "  "
# create suspicious home directories
mkdir /home/hacktheplanet > /dev/null 2>&1
mkdir /home/mike.jones > /dev/null 2>&1
mkdir /home/.hideme > /dev/null 2>&1
echo "part 2 - Home updated . . ."

echo "  "
echo "  "

echo "implement part 3"
# add users
sudo bash addusers.sh > /dev/null 2>&1
echo "  "
echo "part 3 updated . . ."
echo "  "
echo "  "
echo "Finished"



