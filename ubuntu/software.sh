#!/bin/bash

echo "Installing software..."
sudo apt-get install meld -y
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install fish -y
curl -L http://get.oh-my.fish | fish
