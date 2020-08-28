#!/bin/bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

sudo dd if=/dev/zero of=/dev/null &
sudo dd if=/dev/urandom | bzip2 -9 >> /dev/null &

