#!/bin/bash

echo "Installing software..."

# Upgarde brew, install python and pip
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask-versions
brew update
brew tap caskroom/cask

brew install git

brew cask install adoptopenjdk12

brew install python
pip install --user git+https://github.com/Lokaltog/powerline
cp ~/.profile ~/.profile_backup


# Diffmerge
brew install --cask diffmerge

#Oh my fish
brew install fish
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L https://get.oh-my.fish | fish
curl -XGET https://raw.githubusercontent.com/powerline/fonts/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf > ~/Library/Fonts/Meslo_Powerline.otf
fish -c "omf install bobthefish; exit"


