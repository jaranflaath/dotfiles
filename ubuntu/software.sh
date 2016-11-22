#!/bin/bash

echo "Installing software..."

#Meld
sudo apt-get install meld -y

#Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y

#Fish
sudo apt-get install fish -y
curl -L http://get.oh-my.fish | fish

#Powerline fonts for omf
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

# Bobthefish omf theme
fish -c "omf install bobthefish && exit"
echo "" >> ~/.config/fish/config.fish
echo 'set -g theme_date_format "+%H:%M:%S"' >> ~/.config/fish/config.fish

# Hipchat
sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
sudo apt-get update
sudo apt-get install hipchat4
