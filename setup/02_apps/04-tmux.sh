cd ~

echo "----------------------------------------------------"
echo "--- Setting up tmux  - - - -------------------------"
echo "---------------------------------------------------- \n"

mkdir ~/.config/tmux
mkdir ~/.config/tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
ln -s ~/.dotfiles/config/tmux/tmux.conf ~/.tmux.conf

echo "\n--- Setting up tmux - - - DONE --------------------- \n"
