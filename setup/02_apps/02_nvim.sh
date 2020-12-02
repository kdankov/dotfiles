cd ~

echo "----------------------------------------------------"
echo "--- Setting up nvim - - - - ------------------------"
echo "---------------------------------------------------- \n"

echo "--- Cloning configuration  - - - - ------------------------"

git clone git@github.com:kdankov/nvim.git .config/nvim

echo "--- Install minpac - - - - ------------------------"

cd ~/.config/nvim

mkdir pack
cd ~/.config/nvim/pack

mkdir minpac
cd ~/.config/nvim/pack/minpac

mkdir opt
cd ~/.config/nvim/pack/minpac/opt

git clone git@github.com:k-takata/minpac.git

echo "--- Install plugins and Quit - - - - ------------------------"
nvim --headless +PackUpdate +q

echo "\n--- Setting up nvim - - - DONE --------------------- \n \n"
