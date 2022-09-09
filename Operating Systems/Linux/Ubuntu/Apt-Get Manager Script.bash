#!/bin/bash


function aptGetManagerUpdate {
    echo -e $'\nApt-Get Manager Update Start!';
    echo -e $1 | sudo -S apt-get update -y;
    echo -e $'Apt-Get Manager Update Finish!\n';
}

function aptGetManagerUpgrade {
    echo -e $'\nApt-Get Manager Upgrade Start!';
    echo -e $1 | sudo -S apt-get upgrade -y;
    echo -e $'Apt-Get Manager Upgrade Finish!\n';
}


printf $'Enter your password: ';
read -r -s password && echo "";


aptGetManagerUpdate $password;
aptGetManagerUpgrade $password;
