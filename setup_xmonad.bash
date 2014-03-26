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

stow x
stow xmonad

if [ ! -d ~/.local ];
then 
  mkdir ~/.local
fi

if [ ! -d ~/.local/xmonad-lib ];
then
  mkdir ~/.local/xmonad-lib
  ln -s ~/.local/xmonad-lib ~/dotfiles/xmonad/.xmonad/lib 
  cp ~/dotfiles/xmonad-common/Common.hs ~/.local/xmonad-lib
elif [ $force = true ];
then
  rm -ri ~/.local/xmonad-lib
  rm -i ~/dotfiles/xmonad/.xmonad/lib
  mkdir ~/.local/xmonad-lib
  ln -s ~/.local/xmonad-lib ~/dotfiles/xmonad/.xmonad/lib 
  cp ~/dotfiles/xmonad-common/Common.hs ~/.local/xmonad-lib
fi
