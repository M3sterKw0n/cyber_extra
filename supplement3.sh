#!/bin/bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

sudo stress --cpu 2 --timeout 180 > /dev/null 2>&1  &

