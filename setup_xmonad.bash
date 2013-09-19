#!/bin/bash

# must have xmobar and trayer installed

force=false
options=":f"

while getopts $options option
do
  case $option in
    f ) force=true;;
    * ) force=false;;
  esac
done

if [ ! -f ~/.xinitrc ];
then
  ln -s ~/dotfiles/xinitrc ~/.xinitrc
elif [ $force = true ];
then
  rm -i ~/.xinitrc
  ln -s ~/dotfiles/xinitrc ~/.xinitrc
endif

if [ ! -f ~/.xmobarrc ];
then
  ln -s ~/dotfiles/xmobarrc ~/.xmobarrc
elif [ $force = true ];
then
  rm -i ~/.xmobarrc
  ln -s ~/dotfiles/xmobarrc ~/.xmobarrc
endif

if [ ! -d ~/.xmonad ];
then
  mkdir ~/.xmonad
  ln -s ~/dotfiles/xmonad.hs ~/.xmonad/xmonad.hs
fi
elif [ -f ~/.xmonad/xmonad.hs ];
then
  ln -s ~/dotfiles/xmonad.hs ~/.xmonad/xmonad.hs
elif [ $force = true ];
then
  rm -i ~/.xmonad/xmonad.hs
  ln -s ~/dotfiles/xmonad.hs ~/.xmonad/xmonad.hs
fi