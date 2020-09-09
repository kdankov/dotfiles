# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install SSHPass
#brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb

binaries=(
  graphicsmagick
  webkit2png
  rename
  zopfli
  ffmpeg
  python
  sshfs
  trash
  node
  tree
  ack
  wget
  hub
  vim
  neovim
  macvim
  gh
  youtube-dl
  ios-sim
  imagemagick
  curl
  git
  openssl
  bash-completion
)

echo "Installing binaries ..."
brew install ${binaries[@]}

# Cleanup
brew cleanup