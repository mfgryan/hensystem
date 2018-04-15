#!/bin/bash

MY_PATH=$(cd $(dirname $0) && pwd)
FILE_LIST=".bash_aliases .bashrc .profile .vimrc"

for file in $FILE_LIST; do
    if [ -e "${MY_PATH}/${file}" ]; then
        if [ -e ~/${file} ]; then
            echo "Overwriting $file: Save Backup? (y/n)"
            read input
            if [ -n "$input" ] && [ "$input" = "y" ]; then
                mv ~/${file} ~/${file}.bk
            fi
        fi 
        cp ${MY_PATH}/${file} ~/
    fi
done

echo "Copying colors into ~/.vim/colors"
mkdir -p ~/.vim/colors
cp -r ${MY_PATH}/colors/* ~/.vim/colors
