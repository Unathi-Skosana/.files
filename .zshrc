#                 ██
#                ░██
#  ██████  ██████░██      ██████  █████
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

# Source antigen
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles
antigen bundle git
antigen bundle pip
antigen bundle jump
antigen bundle zsh-sudo
antigen bundle vi-mode
antigen bundle pylint
antigen bundle fasd
antigen bundle desyncr/auto-ls
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle peterhurford/git-aliases.zsh
antigen bundle supercrabtree/k

# Other sources
source $HOME/.hooks

# Apply changes
antigen apply

source $HOME/.zsh-themes/daveverwer.zsh-theme
