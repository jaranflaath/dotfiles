git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>;%Creset' --abbrev-commit --date=relative"
git config --global alias.st status
git config --global alias.f fetch
git config --global alias.co checkout
git config --global alias.lgtop "log --graph --decorate --oneline --all --simplify-by-decoration"
git config --global credential.helper "cache --timeout 36000"
git config --global branch.autosetuprebase always
git config --global push.default upstream
git config --global core.excludesfile ~/.gitignore
