#!/bin/bash

force=false

if [ $1 == "-f" ];
then
  force=true
fi

if [ ! -f ~/.tmux.conf ];
then 
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
elif [ $force ];
then
  rm -i ~/.tmux.conf
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

if [ ! -f ~/.vimrc ];
then 
  ln -s ~/dotfiles/vimrc ~/.vimrc
elif [ $force ];
then
  rm -i ~/.vimrc
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi
