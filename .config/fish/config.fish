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
set fish_greeting (motivate)

# PATHS
set -gx PATH $PATH /home/nyx/.local/bin/
set -gx PATH $PATH /opt/anaconda/bin
set -gx PATH $PATH /home/nyx/go/bin
set -gx PATH $PATH /home/nyx/.gem/ruby/2.6.0/bin
set -gx PATH $PATH /home/nyx/.gem/ruby/2.6.0/bin
set -gx PATH $PATH /home/nyx/.npm-global/bin
set -gx PATH $PATH /home/nyx/.bin

# ENV VARIABLES
set -gx PROJECT_PATHS ~/Repositories ~/playground ~/go/src/github.com ~/Dropbox/Hons\ Quantum\ Graph\ Theory/
set -gx EDITOR /usr/bin/gedit
set -gx VISUAL /usr/bin/nvim
set -gx VIMPATH /home/nyx/.config/nvim/init.vim

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish


# Load fish aliases
. ~/.config/fish/aliases.fish
