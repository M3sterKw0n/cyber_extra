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

sudo apt get install wget -y

echo "  "
echo "Glad thats done"
echo "  "
echo "implement part 1"

# create suspicious files
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/innocent.sh -P /home/
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/callme.sh -P /home/max/
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/energizer.php -P /tmp/
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/microsoftword.py.exe -P /home/sally/
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/innocent.sh -P /tmp/.gonnahidehere.sh
sudo wget https://raw.githubusercontent.com/M3sterKw0n/cyber_extra/master/scripts/nothingtoseehere.pl -P /home/.nothingtoseehere.pl

echo "part 1 - Files updated . . . "
echo "  "

echo "implement part 2"
echo "  "
# create suspicious home directories
mkdir /home/hacktheplanet
mkdir /home/mike.jones
mkdir /home/.hideme
echo "part 2 - Home updated . . ."

echo "  "
echo "  "

echo "implement part 3"
# add users
sudo bash addusers.sh
echo "  "
echo "part 3 updated . . ."
echo "  "
echo "  "
echo "Finished"



