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

if [ ! -d bundle/vundle ];
then
  git clone https://github.com/gmarik/vundle bundle/vundle
elif [ $force = true ];
then
  rm -ri bundle/vundle
  git clone https://github.com/gmarik/vundle bundle/vundle
fi

