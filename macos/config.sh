#!/bin/bash

echo "Applying configuration..."

cp ~/.zshrc ~/.zshrc_backup
cat ../config/.zshrc >> ~/.zshrc
cp ~/.config/fish/config.fish ~/.config/fish/config.fish_backup
cat ../config/config.fish >> ~/.config/fish/config.fish