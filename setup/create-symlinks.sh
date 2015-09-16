#!/bin/bash          
cd ~

echo -e "----------------------------------------------------"
echo -e "--- Setting up all Symlinks ------------------------"
echo -e "---------------------------------------------------- \n"

echo -e "--- Bash --- \n"
ln -s ~/.dotfiles/config/bashrc ~/.bash_profile
echo -e "--- DONE --- ln -s ~/.dotfiles/config/bashrc ~/.bash_profile \n \n"

echo -e "--- Git --- \n"
ln -s ~/.dotfiles/config/git/gitconfig ~/.gitconfig
echo -e "--- DONE --- ln -s ~/.dotfiles/config/git/gitconfig ~/.gitconfig \n \n"

echo -e "--- Git --- \n"
ln -s ~/.dotfiles/config/ack/ackrc ~/.ackrc
echo -e "--- DONE --- ln -s ~/.dotfiles/config/git/gitconfig ~/.gitconfig \n \n"

echo -e "--- Vim --- \n"
ln -s ~/.dotfiles/config/vim ~/.vim
ln -s ~/.dotfiles/config/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/config/vim/gvimrc ~/.gvimrc
echo -e "--- DONE --- ln -s ~/.dotfiles/config/vim/vimrc ~/.vimrc \n \n"

echo -e "--- Consular --- \n"
ln -s ~/.dotfiles/config/consularc ~/.consularc

if [ ! -d "~/.config" ]; then
	mkdir ~/.config
	ln -s ~/.dotfiles/config/consular ~/.config/consular
fi

echo -e "--- DONE --- ln -s ~/.dotfiles/config/consularc ~/.consularc \n \n"

echo -e "----------------------------------------------------"
echo -e "--- Symlinks set -----------------------------------"
echo -e "---------------------------------------------------- \n"

ls -lah
