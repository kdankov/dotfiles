
cd ~

echo "----------------------------------------------------"
echo "--- Setting up zsh - - - - -------------------------"
echo "---------------------------------------------------- \n"

git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

ln -s ~/.dotfiles/config/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/config/zsh/zprofile ~/.zprofile

echo "\n--- Setting up zsh - - - DONE ---------------------- \n \n"
