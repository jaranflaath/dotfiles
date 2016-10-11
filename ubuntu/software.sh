#!/bin/bash

echo "Installing software..."
sudo apt-get install meld -y
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install fish -y
curl -L http://get.oh-my.fish | fish
sudo apt-get install python-pip -y
pip install --user git+https://github.com/Lokaltog/powerline
cp ~/.profile ~/.profile_backup
echo "" >> ~/.profile
echo 'if [ -d "$HOME/.local/bin" ]; then' >> ~/.profile
echo '    PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
echo "fi" >> ~/.profile
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
