# Apps
apps=(
  1password
  dropbox
#  iterm2
  firefox
  chromium
  alfred
  audio-hijack
  telegram
  slack
  skype
  adobe-creative-cloud
  istat-menus
  sequel-pro
  viber
  spotify
  moom
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Apps ..."
brew install --cask ${apps[@]}

# Cleanup
brew cleanup
