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
#  iterm2
  firefox
  chromium
  alfred
  audio-hijack
  telegram
  slack
  skype
  iterm2
  audio-hijack
  adobe-creative-cloud
  istat-menus
  sequel-pro
  spotify
  moom
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Apps ..."
brew install --cask ${apps[@]}

# Cleanup
brew cleanup
