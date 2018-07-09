#!/bin/bash

MY_PATH=$(cd $(dirname $0) && pwd)
FILE_LIST=".bash_aliases .bashrc .profile .vimrc"

#Install Vundle, if not already there.
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

for file in $FILE_LIST; do
    if [ -e "${MY_PATH}/${file}" ]; then
        if [ -e ~/${file} ]; then
            echo "Overwrite $file? (y/n)"
            read input
            if [ -n "$input" ] && [ "$input" = "y" ]; then
                mv ~/${file} ~/${file}.bk
                cp -p ${MY_PATH}/${file} ~/
                echo "Copied ${MY_PATH}/${file} to ~/${file}"
            fi
        else
            cp -p ${MY_PATH}/${file} ~/
        fi 
    fi
done

echo "Copying colors into ~/.vim/colors"
mkdir -p ~/.vim/colors
cp -pr ${MY_PATH}/colors/* ~/.vim/colors

source ~/.bashrc
