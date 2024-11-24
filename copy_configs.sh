#!/bin/bash

set -x


echo ${HOME}
cp -v ./files/.tmux.conf ${HOME}/
cp -v ./files/.vimrc ${HOME}/
sudo cp -v /etc/hosts /etc/hosts_$(date +"%Y%m%d%H%M%S") && sudo cp -v ./files/hosts /etc/hosts
