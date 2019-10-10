# dotfiles and more

My dotfiles, os settings, plus many brew + cask packages. Gratefully extended from [webpro's dotfiles](https://github.com/webpro/dotfiles).

It targets OS X systems, but since it has some defensive checks it should work on *nix as well (tested on a few Linux boxes).

## Package overview

* Core
    * Zsh, Bash + [coreutils](http://en.wikipedia.org/wiki/GNU_Core_Utilities) + zsh/bash completion
    * [Homebrew](http://brew.sh/), [homebrew-cask](http://caskroom.io/)
    * Node.js stable + nvm (use `nvm-switched` to reset the softlink /usr/local/bin/node)
    * GNU [sed](http://www.gnu.org/software/sed/), [grep](https://www.gnu.org/software/grep/), [Wget](https://www.gnu.org/software/wget/)
    * [fasd](https://github.com/clvv/fasd), [psgrep](https://github.com/jvz/psgrep/blob/master/psgrep), [pgrep](http://linux.die.net/man/1/pgrep), [spot](https://github.com/guille/spot), [tree](http://mama.indstate.edu/users/ice/tree/), [vtop](https://github.com/MrRio/vtop)
    * Git + [SourceTree](http://www.sourcetreeapp.com) + [hub](http://hub.github.com/)
    * [rvm](https://rvm.io/) (Ruby 2.1), [consular](https://github.com/achiu/consular) ([-osx](https://github.com/achiu/consular-osx)), [lunchy](https://github.com/eddiezane/lunchy)
    * Python 2
    * Vim + [Maximum Awesome](https://github.com/square/maximum-awesome)
* Dev (FE/JS/JSON): [http-server](https://github.com/nodeapps/http-server), [jq](http://stedolan.github.io/jq/), [nodemon](http://nodemon.io), [peco](http://peco.github.io), [underscore-cli](https://github.com/ddopson/underscore-cli)
* Graphics: [ffmpeg](https://www.ffmpeg.org), [gifsicle](http://www.lcdf.org/gifsicle), [imagemagick](http://www.imagemagick.org), [svgo](https://github.com/svg/svgo)
* OS X specific: [dockutil](https://github.com/kcrawford/dockutil), [Mjolnir](https://github.com/sdegutis/mjolnir), [Mackup](https://github.com/lra/mackup), [Quick Look plugins](https://github.com/sindresorhus/quick-look-plugins)
* OS X apps (via brew cask, symlinked into /Applications):
    * Alfred (I have workflows for the paid version listed [here](https://www.dropbox.com/home/Public/Mac%20OSX/Alfred%20Workflows))
    * VSCode (will install the [listed extensions](install/vscode-extensions.txt))
    * ... and many others, see [list here](install/brew-cask.sh)
* Aliases: please try `listaliases` after install to see all the aliases, or just enter `_a` to open the shared system/.alias file and see what they all point to ;)

## Install

On a sparkling fresh installation of OS X:

    sudo softwareupdate -i -a
    xcode-select --install

Install the dotfiles with either Git or curl:

### Clone with Git

    git clone https://github.com/morriz/dotfiles.git
    source dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    sh -c "`curl -fsSL https://raw.github.com/morriz/dotfiles/master/remote-install.sh`"

Or, using wget:

    sh -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/morriz/dotfiles/master/remote-install.sh`"

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help               This help message
       edit               Open dotfiles in default editor (subl) and Git GUI (stree)
       test               Run tests
       update             Update packages and pkg managers: OS X Applications, Homebrew/Cask, npm, Ruby, and pip
       osx                Apply OS X system defaults
       dock               Apply OS X Dock settings
       install mjolnir    Install Mjolnir (Homebrew/Luarocks)

## Customize/extend

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced via `.bash_profile` or `.zshrc` automatically. This file is in `.gitignore`. Please provide custom git creds, or override mine in git/.gitconfig.

In the `runcom/` folder you can find files that were symlinked into $HOME, and which may also be edited. Depending on your preference for bash vs zsh, you can edit `.bash_profile` or `.zshrc`. Shared stuff should go into `runcom/.common`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`.

* `~/.bash_profile` or `~/.zshrc` will load `runcom/.common`, which sources all `~/.extra/runcom/*.sh` files.
* The installer (`install.sh`) will run `~/.extra/install.sh`.

## Additional resources

* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [Homebrew](http://brew.sh/) / [FAQ](https://github.com/Homebrew/homebrew/wiki/FAQ)
* [homebrew-cask](http://caskroom.io/) / [usage](https://github.com/phinze/homebrew-cask/blob/master/USAGE.md)
* [Bash prompt](http://wiki.archlinux.org/index.php/Color_Bash_Prompt)
* [Solarized Color Theme for GNU ls](https://github.com/seebi/dircolors-solarized)

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
