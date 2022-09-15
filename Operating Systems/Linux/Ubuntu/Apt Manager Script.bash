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

function aptManagerFullUpgrade {
    echo -e $'\nApt Manager Full Upgrade Start!';
    echo -e $1 | sudo -S apt full-upgrade -y;
    echo -e $'Apt Manager Full Upgrade Finish!\n';
}

function aptManagerAutoRemove {
    echo -e $'\nApt Manager Auto Remove Start!';
    echo -e $1 | sudo -S apt autoremove -y;
    echo -e $'Apt Manager Auto Remove Finish!\n';
}


printf $'Enter your password: ';
read -r -s password && echo "";


aptManagerUpdate $password;
aptManagerUpgrade $password;
aptManagerFullUpgrade $password;

aptManagerAutoRemove $password;
