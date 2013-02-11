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

if [ ! -f ~/.tmux.conf ];
then 
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
elif [ $force = true ];
then
  rm -i ~/.tmux.conf
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

if [ ! -f ~/.vimrc ];
then 
  ln -s ~/dotfiles/vimrc ~/.vimrc
elif [ $force = true ];
then
  rm -i ~/.vimrc
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi
