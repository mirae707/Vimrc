#!/bin/bash

echo "Setting Start!"
echo "Which one do you use distros??"
echo "a) Based on Arch"
echo "u) Based on Ubuntu"
echo "f) Fedora"

read CHOICE
case $CHOICE in
    a)
        sudo pacman -S python tmux base-devel gdb nodejs npm yarn clang vim python-pip python-setuptools curl wget python-virtualenv
        python -m pip install --upgrade pip
   ;;
    u)
        sudo apt install tmux build-essential gdb nodejs npm yarn clangd-11 python3-pip python3-setuptools python3-venv python-is-python3
        python3 -m pip install --upgrade pip
	sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100
   ;;
    f)
        sudo dnf install tmux gdb nodejs npm yarnpkg python3-pip python3-setuptools python3-virtualenv
        python -m pip install --upgrade pip
   ;;
esac

# Set vim
echo "Copy vim configuration"
mkdir ~/.vim
cp ~/vimrc/vimrc.vim ~/.vimrc
cp -r ~/vimrc/ftplugin ~/.vim/

# Copying Tmux configuration file
cp ~/vimrc/tmux.conf ~/.tmux.conf
 
echo "Everything is Done!!"

exit 0
