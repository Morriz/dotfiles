INSTALL_DIR=$DOTFILES_DIR/maximimum-awesome

brew install oh-my-zsh

# Install/update
mkdir -p "$INSTALL_DIR" && git clone https://github.com/square/maximum-awesome.git "$INSTALL_DIR"
cd "$INSTALL_DIR" && git pull

# Build
rake

# use vim/.vimrc.local
ln -sf "$DOTFILES_DIR/vim/.vimrc.local" ~/.vimrc.local
ln -sf "$DOTFILES_DIR/vim/.vimrc.bundle.local" ~/.vimrc.bundle.local

cd -
