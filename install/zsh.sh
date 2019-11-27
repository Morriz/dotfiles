brew install zsh

grep "/usr/local/bin/zsh" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/zsh >> /private/etc/shells"
chsh -s /usr/local/bin/zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# don't use default config, as we provide from system folder
ln -sf $DOTFILES_DIR/runcom/.zshrc ~/.zshrc

curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
