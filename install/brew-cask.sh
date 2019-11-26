# Install Caskroom

brew install brew-cask

exp="HOMEBREW_CASK_OPTS='--appdir=/Applications'"
export exp

# Install packages

apps=(
    alfred
    atom
    dash
    dropbox
    # glimmerblocker
    github-desktop
    google-chrome
    google-drive
    iterm
    kaleidoscope
    keycue
    macdown
    opera
    screenflow
    shortcat
    slack
    spectacle
    spotify
    transmit
    vagrant
    virtualbox
    vlc
    visual-studio-code
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
