#!/bin/bash

###########################
# Author-Abhijeet Bhovar  #
# Github-iamabhijeet20	  #
#			  #
###########################

app=$1

if command -v $app >/dev/null 2>&1; then
    echo "The app is already installed"
    echo "Do you want to uninstall the app? Y / N "
    read uninstall

    if [ "$uninstall" == "Y" ] || [ "$uninstall" == "y" ]; then
        apt purge $app -y
        echo "The $app is uninstalled"
    else
        echo "Script exited"
    fi
else
    apt install $app -y
fi
