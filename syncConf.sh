#!/bin/bash

##########
#  Bash  #
##########

mkdir -p bash
cp ~/.bashrc bash/
cp ~/.bash_profile bash/
cp ~/.inputrc bash/
cp -rf ~/.bash bash/
echo "Copied bash config"


###########
#   Vim   #
###########

mkdir -p vim
# mkdir -p vim/plugin
# mkdir -p vim/colors
# mkdir -p vim/fonts

cp ~/.vimrc vim/
cp -rf ~/.vim/plugin vim/
cp -rf ~/.vim/colors vim/
echo "Copied vim config"



###########
# VS Code #
###########

mkdir -p code
cp ~/Library/Application\ Support/Code/User/settings.json code/
echo "Copied vscode config"
