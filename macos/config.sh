#!/bin/bash

echo "Applying configuration..."

cat ../config/.zshrc >> ~/.zshrc
cat ../config/config.fish >> ~/.config/fish/config.fish