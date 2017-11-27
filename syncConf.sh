#!/bin/bash

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
