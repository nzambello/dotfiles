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
cp ~/.config/nvim/init.vim vim/
echo "Copied vim config"



###########
# VS Code #
###########

mkdir -p code
# cp ~/Library/Application\ Support/Code/User/settings.json code/
cp ~/Library/Application\ Support/VSCodium/User/settings.json code/
echo "Copied vscode config"



#########
#  ZSH  #
#########

mkdir -p zsh/.oh-my-zsh-themes
mkdir -p scripts/
cp ~/.zshrc zsh/
cp -r ~/scripts/ scripts/
echo "Copied zsh config"



#########
#  GIT  #
#########

mkdir -p git
cp ~/.gitconfig git/
echo "Copied git config"


##########
#  ONI2  #
##########

mkdir -p oni2
cp -r ~/.config/oni2/configuration.json oni2/
cp -r ~/.config/oni2/keybindings.json oni2/
echo "# Extensions\n" > oni2/extensions.md
ls -1 ~/.config/oni2/extensions >> oni2/extensions.md
echo "Copied oni2 config"
