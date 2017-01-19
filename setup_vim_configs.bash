#!/bin/bash

force=false
options=":f"

while getopts $options option
do
  case $option in
    f ) force=true;;
    * ) force=false;;
  esac
done

if [ ! -d ~/.config/vim/repos/github.com/Shougo/dein.vim ];
then
  mkdir -p ~/.config/vim/repos/github.com/Shougo/
  git clone https://github.com/Shougo/dein.vim.git ~/.config/vim/repos/github.com/Shougo/dein.vim
elif [ $force = true ];
then
  rm -r ~/.config/vim/repos/github.com/Shougo/dein.vim
  git clone https://github.com/Shougo/dein.vim.git ~/.config/vim/repos/github.com/Shougo/dein.vim
fi

# neovim
if [ ! -d ~/.config/nvim ];
then
  mkdir -p ~/.config/nvim
  ln -s ~/.vimrc ~/.config/nvim/init.vim 
fi
