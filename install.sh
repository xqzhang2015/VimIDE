#!/bin/bash

# fetch submodules
git submodule update --init --recursive

# setup vim local conf
PATH_VIMCONFIG=`pwd`
ln -sf ${PATH_VIMCONFIG} ~/.vim

if [ -f $HOME/.vimrc ];then
	cp $HOME/.vimrc $HOME/.vimrc.old
fi
cp -f vimrc ~/.vimrc

