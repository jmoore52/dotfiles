#!/bin/bash

if [ ! -d ~/.vim ];
then
  mkdir ~/.vim
fi

cd ~/.vim

#if [[ `hostname -s` = h*-hsa* ]];
#then
#  git clone ssh://hasenov@10.100.1.1/~/.vim/bundle/vundle bundle/vundle
#else
git clone https://github.com/gmarik/vundle bundle/vundle
#fi
