#!/bin/bash

echo "Installing software..."

# Upgarde brew, install python and pip
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install git
brew install python
pip install --user git+https://github.com/Lokaltog/powerline
cp ~/.profile ~/.profile_backup

#Oh my fish
brew install fish
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L https://get.oh-my.fish
curl -XGET https://github.com/powerline/fonts/blob/master/Meslo/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.otf?raw=true > ~/Downloads/Meslo_Powerline.otf
echo "Please install the downloaded Powerline font"
fish -c "omf install bobthefish; exit"
echo "" >> ~/.config/fish/config.fish
echo 'set -g theme_date_format "+%H:%M:%S"' >> ~/.config/fish/config.fish
