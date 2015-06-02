# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set -gx TERM xterm-256color
# Theme
set fish_theme agnoster
set -x EDITOR 'vim -f'
# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# for rbenv
set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub) 
