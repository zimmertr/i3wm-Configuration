#!/bin/bash

curAdapter=$(sudo prime-select query)

if [[ $curAdapter == "intel" ]];
then
    sudo prime-select nvidia > /dev/null 2>&1
    sudo systemctl restart lightdm
elif [[ $curAdapter == "nvidia" ]];
then
    sudo prime-select intel > /dev/null 2>&1
    sudo systemctl restart lightdm
else
    exit 33;
fi
