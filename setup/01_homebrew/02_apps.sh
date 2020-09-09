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
  moom
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Apps ..."
brew cask install --appdir="/Applications" ${apps[@]}

# Cleanup
brew cleanup