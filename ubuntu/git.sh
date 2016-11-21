#!/bin/bash

echo "Setting up git.."
../common/git-config.sh
git config --global diff.tool meld
git config --global merge.tool meld
