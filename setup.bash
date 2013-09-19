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

# install tmux config
if [ ! -f ~/.tmux.conf ];
then 
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
elif [ $force = true ];
then
  rm -i ~/.tmux.conf
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

# install vim config
if [ ! -f ~/.vimrc ];
then 
  ln -s ~/dotfiles/vimrc ~/.vimrc
elif [ $force = true ];
then
  rm -i ~/.vimrc
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi

# install zsh config
if [ ! -f ~/.zshrc ];
then 
  ln -s ~/dotfiles/zshrc ~/.zshrc
elif [ $force = true ];
then
  rm -i ~/.zshrc
  ln -s ~/dotfiles/zshrc ~/.zshrc
fi

# install zprofile
if [ ! -f ~/.zprofile ];
then 
  ln -s ~/dotfiles/zprofile ~/.zprofile
elif [ $force = true ];
then
  rm -i ~/.zprofile
  ln -s ~/dotfiles/zprofile ~/.zprofile
fi
