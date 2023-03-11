#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/common.sh)

printLogo

printGreen "Install docker and docker compose"
bash <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/docker-install.sh)

printGreen "Install and running node"
cd $HOME || return
git clone https://github.com/taikoxyz/simple-taiko-node.git && cd $HOME/simple-taiko-node || exit
cp .env.sample .env

docker-compose up -d


printGreen "To see logs use: cd \$HOME/simple-taiko-node && docker-compose logs"