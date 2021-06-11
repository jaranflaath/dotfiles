#!/bin/bash

git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>;%Creset' --abbrev-commit --date=relative"
git config --global alias.st status
git config --global alias.to checkout
git config --global alias.create "checkout -b"
git config --global credential.helper "cache --timeout 36000"
git config --global branch.autosetuprebase always
git config --global push.default upstream
git config --global core.excludesfile ~/.gitignore
git config --global user.name "Jaran Flaath"
git config --global user.email jaran.flaath@hey.com
git config --global fetch.prune true
git config --global diff.tool diffmerge
git config --global difftool.diffmerge.cmd '/usr/local/bin/diffmerge "$LOCAL" "$REMOTE"'
git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.trustexitcode true
git config --global mergetool.diffmerge.cmd '/usr/local/bin/diffmerge --merge --result="$MERGED" "$LOCAL" "$BASE" "$REMOTE"'
