#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
INSTALL_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_DIR=$HOME/.dotfiles
ln -sf $INSTALL_DIR $DOTFILES_DIR
EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.gemrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
# . "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/zsh.sh"
#. "$DOTFILES_DIR/install/maximum-awesome.sh"
. "$DOTFILES_DIR/install/node.sh"

if [ "$(uname)" = "Darwin" ]; then
    . "$DOTFILES_DIR/install/brew-cask.sh"
    . "$DOTFILES_DIR/install/ruby.sh"
    ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
fi

# Run tests

bats test/*.bats

# Install extra stuff

if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install.sh" ]; then
    . "$EXTRA_DIR/install.sh"
fi
