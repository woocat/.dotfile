#!/bin/bash
CurrentPath=`pwd`
ln -s ${CurrentPath}/.vimrc ~/.vimrc
ln -s ${CurrentPath}/.zshrc ~/.zshrc
#ln -s ${CurrentPath}/.git ~/.git
ln -s ${CurrentPath}/.gitconfig ~/.gitconfig
#ln -s ${CurrentPath}/.Xresources ~/.Xresources
ln -s ${CurrentPath}/.spacemacs  ~/.spacemacs
#ln -s ${CurrentPath}/.xinitrc  ~/.xinitrc
ln -s ${CurrentPath}/compton.conf ~/.config/compton.conf
ln -s ${CurrentPath}/i3 ~/.config/i3
#ln -s ${CurrentPath}/i3blocks  ~/.config/i3blocks
#ln -s ${CurrentPath}/ranger  ~/.config/ranger
