# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval (eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv)
# <<< conda initialize <<<

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract

# Suppress fish greeting
set fish_greeting ""

# Remove path underline
set fish_color_valid_path

# PATHS
set -gx PATH $PATH $HOME/.local/bin/
set -gx PATH $PATH $HOME/go/bin
set -gx PATH $PATH $HOME/.gem/ruby/2.6.0/bin
set -gx PATH $PATH $HOME.gem/ruby/2.6.0/bin
set -gx PATH $PATH $HOME/.npm-global/bin
set -gx PATH $PATH $HOME/.bin
set -gx PATH $PATH /opt/anaconda/bin

# ENV VARIABLES
set -gx PROJECT_PATHS $HOME/Repositories $HOME/playground $HOME/go/src/github.com $HOME/Dropbox $HOME/.config
set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim
set -gx VIMPATH /home/nyx/.config/nvim/init.vim
set -x -U GOPATH $HOME/go
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx JUPYTERLAB_DIR $HOME/.local/share/jupyter/lab
set -gx FZF_DEFAULT_COMMAND 'fd -H'

# Load Tacklebox configuration
. $HOME/.tacklebox/tacklebox.fish

# Load fish aliases
. $HOME/.config/fish/aliases.fish

# Load custom functions
. $HOME/.config/fish/functions/misc.fish

# Load bindings
. $HOME/.config/fish/bindings.fish

#source $HOME/.config/fish/cowsay.fish
