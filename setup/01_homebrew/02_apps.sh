# Apps
apps=(

  firefox
  chromium
  google-chrome
  google-chrome-canary

  moom
  alfred

  telegram
  slack
  viber

  1password
  dropbox
  iterm2
  audio-hijack
  adobe-creative-cloud
  istat-menus
  sequel-pro
  spotify
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Apps ..."
brew cask install --appdir="/Applications" ${apps[@]}

# Cleanup
brew cleanup
