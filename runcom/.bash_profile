export DOTFILES_DIR=~/.dotfiles
source "$DOTFILES_DIR/runcom/.common"

# Set LSCOLORS
if `which dircolors` >/dev/null; then
    dircolors "$DOTFILES_DIR/system/.dir_colors"
fi

# Case-insensitive globbing (used in pathname expansion)

shopt -s nocaseglob

# Recursive globbing with "**"

if [ ${BASH_VERSINFO[0]} -ge 4 ]; then
    shopt -s globstar
fi

# Append to the Bash history file, rather than overwriting it

shopt -s histappend

# Autocorrect typos in path names when using `cd`

shopt -s cdspell

# Do not autocomplete when accidentally pressing Tab on an empty line.

shopt -s no_empty_cmd_completion

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.

shopt -s checkwinsize

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
    . $LUNCHY_DIR/lunchy-completion.bash
fi
