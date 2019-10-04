#!/bin/sh

##########
#  Bash  #
##########

mkdir -p bash
cp ~/.bashrc bash/
cp ~/.bash_profile bash/
cp -r ~/.bash bash/
echo "Copied bash config"


###########
#   Vim   #
###########

mkdir -p vim
cp ~/.vimrc vim/
echo "Copied vim config"



###########
# VS Code #
###########

mkdir -p code
cp ~/Library/Application\ Support/Code/User/settings.json code/
echo "Copied vscode config"



#########
#  ZSH  #
#########

mkdir -p zsh/.oh-my-zsh-themes
cp ~/.zshrc zsh/
cp ~/.oh-my-zsh/themes/agnoster.zsh-theme zsh/.oh-my-zsh-themes/
echo "Copied zsh config"



#########
#  GIT  #
#########

mkdir -p git
cp ~/.gitconfig git/
echo "Copied git config"
