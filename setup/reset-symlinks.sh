#!/bin/bash          
cd ~

echo -e "----------------------------------------------------"
echo -e "--- Reset symlinks ---------------------------------"
echo -e "---------------------------------------------------- \n"

echo -e "--- Bash --- \n"
rm ~/.bash_profile
echo -e "--- DONE --- rm ~/.bash_profile \n \n"

echo -e "--- Git --- \n"
rm ~/.gitconfig
echo -e "--- DONE --- rm ~/.gitconfig \n \n"

echo -e "--- Vim --- \n"
rm ~/.vimrc
rm ~/.gvimrc
rm ~/.vim
echo -e "--- DONE --- rm ~/.vimrc \n \n"

echo -e "--- Consular --- \n"
rm ~/.consularc
rm ~/.config/consular
echo -e "--- DONE --- rm ~/.consularc \n \n"

echo -e "----------------------------------------------------"
echo -e "--- Symlinks removed -------------------------------"
echo -e "---------------------------------------------------- \n"

ls -lah

