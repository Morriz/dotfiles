# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew untap homebrew/versions
brew untap homebrew/dupes
brew untap caskroom/cask
# cleanup
brew update
brew cleanup --force -s && rm -rf "$(brew --cache)"
# tap fresh
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap caskroom/cask

brew upgrade

# Install packages

apps=(
    bash-completion2
    bats
    coreutils
    dockutil
    # ffmpeg
    fasd
    # git without completions to allow zsh completion through hub
    git --without-completions
    # gifsicle
    # gitsh
    git-extras
    git-flow
    gnu-sed --with-default-names
    grep --with-default-names
    # heroku-toolbelt
    hub
    python
    httpie
    # imagemagick
    jq
    legit
    mackup
    ngrok
    peco
    psgrep
    ruby
    shellcheck
    ssh-copy-id
    #svn
    tree
    vim
    # wget
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
