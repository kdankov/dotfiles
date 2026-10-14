cd ~

echo "----------------------------------------------------"
echo "--- Setting up tmux  - - - -------------------------"
echo "---------------------------------------------------- \n"

mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/.dotfiles/config/tmux/tmux.conf ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins

echo "\n--- Setting up tmux - - - DONE --------------------- \n"
