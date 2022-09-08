#!/bin/bash


function aptManagerUpdate {
    echo -e $'\nApt Manager Update Start!';
    echo -e $1 | sudo -S apt update -y;
    echo -e $'Apt Manager Update Finish!\n';
}

function aptManagerUpgrade {
    echo -e $'\nApt Manager Upgrade Start!';
    echo -e $1 | sudo -S apt upgrade -y;
    echo -e $'Apt Manager Upgrade Finish!\n';
}


printf $'Enter your password: ';
read -r -s password && echo "";


aptManagerUpdate $password;
aptManagerUpgrade $password;
