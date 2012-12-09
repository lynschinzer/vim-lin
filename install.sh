#!/bin/bash

if [ -d ~/.vim/ ]; then
    mv ~/.vim ~/.vim_backup
fi
if [ -d ~/.fonts/ ]; then
    mv ~/.fonts ~/.fonts_backup
fi

prev=`pwd`

cd ~/
ln --symbolic $prev/fonts ~/.fonts
ln --symbolic $prev/vimrc ~/.vimrc
ln --symbolic $prev        ~/.vim
cd -

echo "+----------------------------+" 
echo "| Lin's vim config installed |"
echo "+----------------------------+" 
