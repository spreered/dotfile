#!/bin/bash


echo "installing dotfile..."

ln -s `pwd`/vim $HOME/.vim 
ln -s `pwd`/vimrc $HOME/.vimrc
ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/zsh ~/.zsh
ln -s `pwd`/zshenv ~/.zshenv
ln -s `pwd`/Brewfile ~/Brewfile
