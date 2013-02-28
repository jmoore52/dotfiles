#!/bin/bash

if [ ! -d ~/.vim ];
then
  mkdir ~/.vim
fi

cd ~/.vim

if [[ `hostname -s` = h*-hsa* ]];
then
  git clone ssh://hasenov@10.100.1.1/~/.vim/bundle/ctrlp.vim bundle/ctrlp.vim
else
  git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
fi
