# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install Vim
brew install vim

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

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
  git
  hub
  macvim
  gh
  youtube-dl
  ios-sim
  imagemagick
)

echo "Installing binaries ..."
brew install ${binaries[@]}

# Cleanup
brew cleanup

# Installing Apps with Homebrew Cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
  iterm2
  sublime-text3
  firefox
  chromium
  evernote
  alfred
  chitchat
  cleanmymac
  dropbox
  duet
  slack
  skype
  4k-video-downloader
  4k-youtube-to-mp3
  adobe-creative-cloud
  transmission
  gitup
  catch
  googleappengine
  istat-menus
  mailbox
  sequel-pro
  viber
  spotify
  vagrant
  virtualbox
  battle-net
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cask alfred link
