#!/bin/bash
set -x

for PKG in tig htop python3; do
    if ! command -v ${PKG} &>/dev/null
    then
        echo "${PKG} is not installed. Installing now..."
        sudo apt install -y ${PKG}
    else
        echo "${PKG} is already installed"
    fi
done
