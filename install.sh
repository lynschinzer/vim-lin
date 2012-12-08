#!/bin/bash

if [ -d ~/.vim/ ]; then
    mv ~/.vim ~/.vim_backup
fi

ln --symbolic . .vim
mv .vim ~/

ln --symbolic .vimrc vimrc
mv vimrc ~/.vimrc

echo "+----------------------------+" 
echo "| Lin's vim config installed |"
echo "+----------------------------+" 
