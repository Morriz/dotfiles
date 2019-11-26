# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# cleanup
brew update
brew cleanup -s && rm -rf "$(brew --cache)"
brew upgrade

# Install packages
brew install ruby

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
    openssl
    peco
    psgrep
    shellcheck
    ssh-copy-id
    #svn
    tmux
    tree
    vim
    # wget
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
