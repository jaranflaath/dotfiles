#!/bin/bash

echo "Installing software..."

# Upgarde brew, install python and pip
brew update
brew install python
pip install --user git+https://github.com/Lokaltog/powerline
cp ~/.profile ~/.profile_backup

#Oh my fish
curl -L http://get.oh-my.fish | fish
fish -c "omf install bobthefish && exit"
echo "" >> ~/.config/fish/config.fish
echo 'set -g theme_date_format "+%H:%M:%S"' >> ~/.config/fish/config.fish
