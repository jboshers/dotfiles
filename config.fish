set -U fish_path $HOME/dotfiles/

set -gx TERM xterm-256color

# Aliases and what not
source $HOME/dotfiles/alias.fish

# for App specific stuff
source $HOME/dotfiles/fish.local

# set startup message
set -g -x fish_greeting 'Per Aspera Ad Inferi'

set -x EDITOR 'vim -f'

# for rbenv
 set -gx RBENV_ROOT /usr/local/var/rbenv
 source (rbenv init -|psub)

source $HOME/.iterm2_shell_integration.fish
