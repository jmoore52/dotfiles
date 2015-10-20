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

if [ ! -d ~/.vim ];
then
  mkdir ~/.vim
fi

cd ~/.vim

if [ ! -d bundle/neobundle.vim ];
then
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
elif [ $force = true ];
then
  rm -r bundle/neobundle.vim
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

