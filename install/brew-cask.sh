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
    firefox
    firefox-nightly
    flux
    # glimmerblocker
    github-desktop
    google-chrome
    google-chrome-canary
    google-drive
    kaleidoscope
    keycue
    macdown
    opera
    screenflow
    shortcat
    slack
    sourcetree
    spotify
    transmit
    vagrant
    virtualbox
    vlc
    webstorm
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
