#                 ██                    
#                ░██                    
#  ██████  ██████░██      ██████  █████ 
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░ 
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████ 
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░  


# Source antigen
source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle jump
antigen bundle zsh-sudo
antigen bundle vi-mode
antigen bundle pylint
antigen bundle fasd
antigen bundle desyncr/auto-ls

# Syntax highlighting and autosuggestions bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Other sources
source $HOME/.hooks

# theme
source $HOME/.bin/prompts/lambda-mode.zsh-theme

# fasd
eval "$(fasd --init auto)"

# Apply changes
antigen apply
