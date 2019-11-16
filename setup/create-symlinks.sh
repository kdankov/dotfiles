#!/bin/bash          
cd ~

echo -e "----------------------------------------------------"
echo -e "--- Setting up all Symlinks ------------------------"
echo -e "---------------------------------------------------- \n"

# echo -e "--- Bash --- "
# ln -s ~/.dotfiles/config/bashrc ~/.bash_profile
# echo -e "| --- DONE --- \n \n"

echo -e "--- git --- "
ln -s ~/.dotfiles/config/git/gitconfig ~/.gitconfig
echo -e "| --- git - DONE --- \n \n"

echo -e "--- ack --- "
ln -s ~/.dotfiles/config/ack/ackrc ~/.ackrc
echo -e "| --- ack - DONE --- \n \n"

echo -e "----------------------------------------------------"
echo -e "--- Symlinks set -----------------------------------"
echo -e "---------------------------------------------------- \n"

ls -lah
