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

. $HOME/.config/fish/envs.fish

# Load Tacklebox configuration
. $HOME/.tacklebox/tacklebox.fish

# Load fish aliases
. $HOME/.config/fish/aliases.fish

# Load fish abbreviations
. $HOME/.config/fish/abbreviations.fish

# Load custom functions
. $HOME/.config/fish/functions/misc.fish
