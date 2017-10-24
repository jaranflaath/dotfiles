#!/bin/bash

echo "=========================================================================="
echo "  macOS setup script                                                      "
echo "=========================================================================="
echo ""

./software.sh
./git.sh

echo "Setting JAVA_HOME"
echo "" >> ~/.bash_profile
echo 'export JAVA_HOME=$(/usr/libexec/java_home)' >> ~/.bash_profile

echo "" >> ~/.zshrc
echo 'export PATH="/Users/jaran/Library/Android/sdk/tools/:$PATH"' >> ~/.zshrc
