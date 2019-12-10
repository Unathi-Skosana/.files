# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval (eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv)
# <<< conda initialize <<<

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
#set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Suppress fish greeting
set fish_greeting ""

# PATHS
set -gx PATH $PATH $HOME/.local/bin/
set -gx PATH $PATH $HOME/go/bin
set -gx PATH $PATH $HOME/.gem/ruby/2.6.0/bin
set -gx PATH $PATH $HOME.gem/ruby/2.6.0/bin
set -gx PATH $PATH $HOME/.npm-global/bin
set -gx PATH $PATH $HOME/.bin
set -gx PATH $PATH /opt/anaconda/bin

# ENV VARIABLES
set -gx PROJECT_PATHS $HOME/Repositories $HOME/playground $HOME/go/src/github.com $HOME/Dropbox/hons-quantum-graph-theory
set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim
set -gx VIMPATH /home/nyx/.config/nvim/init.vim
set -x -U GOPATH $HOME/go

# Load Tacklebox configuration
. $HOME/.tacklebox/tacklebox.fish


# Load fish aliases
. $HOME/.config/fish/aliases.fish

# xsecurelock
set -gx XSECURELOCK_AUTH auth_x11
set -gx XSECURELOCK_SAVER saver_xscreensaver
set -gx XSECURELOCK_PASSWORD_PROMPT asterisks
set -gx XSECURELOCK_SHOW_USERNAME 1
set -gx XSECURELOCK_SHOW_HOSTNAME 1
set -gx XSECURELOCK_SHOW_DATETIME 1
set -gx XSECURELOCK_SINGLE_AUTH_WINDOW 1

source $HOME/.config/fish/cowsay.fish
