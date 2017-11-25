#!/bin/bash

##########
#  Bash  #
##########

mkdir -p bash
cp ~/.bashrc bash/
cp ~/.bash_profile bash/
cp ~/.inputrc bash/
cp ~/.git-completion.bash bash/
cp -r ~/.bash bash/
echo "Copied bash config"


###########
#   Vim   #
###########

mkdir -p vim
cp ~/.vimrc vim/
cp -r ~/.vim/plugin vim/
cp -r ~/.vim/colors vim/
echo "Copied vim config"



###########
# VS Code #
###########

mkdir -p code
cp ~/Library/Application\ Support/Code/User/settings.json code/
echo "Copied vscode config"
