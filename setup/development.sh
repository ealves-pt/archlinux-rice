#!/bin/bash

yay -S \
    bison \
    wget \
    ripgrep \
    fd \
    direnv

# install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# install GVM
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
