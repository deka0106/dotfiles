#!/bin/sh
set -euo pipefail

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -int 36

# Desktop
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowTabView -bool true

# Menu
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

defaults write NSGlobalDomain InitialKeyRepeat -int 25
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

for app in "Dock" "Finder" "SystemUIServer"; do
    killall "${app}" &
    >/dev/null
done
