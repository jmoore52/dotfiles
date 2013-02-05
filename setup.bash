#!/bin/bash

if [ ! -f ~/.tmux.conf ];
then 
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

if [ ! -f ~/.vimrc ];
then 
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi
