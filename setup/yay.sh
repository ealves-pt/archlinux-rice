#!/bin/bash

if ! command -v yay &> /dev/null; then
    curr=$(pwd)

    cd /tmp
    git clone https://aur.archlinux.org/yay-git.git
    cd yay-git
    makepkg -si

    cd $curr
fi;