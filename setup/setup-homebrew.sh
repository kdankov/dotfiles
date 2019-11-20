# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install zsh
brew install zsh

# Install SSHPass
brew install https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb

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

# Apps
apps=(
  1password
  dropbox
  iterm2
  firefox
  chromium
  alfred
  audio-hijack
  telegram
  slack
  skype
  4k-video-downloader
  4k-youtube-to-mp3
  adobe-creative-cloud
  transmission
  gitup
  istat-menus
  sequel-pro
  viber
  spotify
  virtualbox
  battle-net
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Link Alfred
brew cask alfred link
