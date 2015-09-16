#!/bin/bash          
cd ~

echo -e "----------------------------------------------------"
echo -e "--- Setting up all Symlinks ------------------------"
echo -e "---------------------------------------------------- \n"

echo -e "--- Bash --- "
ln -s ~/.dotfiles/config/bashrc ~/.bash_profile
echo -e "| --- DONE --- \n \n"

echo -e "--- Git --- "
ln -s ~/.dotfiles/config/git/gitconfig ~/.gitconfig
echo -e "| --- DONE --- \n \n"

echo -e "--- Git --- "
ln -s ~/.dotfiles/config/ack/ackrc ~/.ackrc
echo -e "| --- DONE --- \n \n"

echo -e "--- Vim --- "
ln -s ~/.dotfiles/config/vim ~/.vim
ln -s ~/.dotfiles/config/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/config/vim/gvimrc ~/.gvimrc
echo -e "| --- DONE --- \n \n"

#echo -e "--- Consular --- \n"
#ln -s ~/.dotfiles/config/consularc ~/.consularc
#if [ ! -d "~/.config" ]; then
	#mkdir ~/.config
	#ln -s ~/.dotfiles/config/consular ~/.config/consular
#fi
#echo -e "| --- DONE --- \n \n"

echo -e "----------------------------------------------------"
echo -e "--- Symlinks set -----------------------------------"
echo -e "---------------------------------------------------- \n"

ls -lah
