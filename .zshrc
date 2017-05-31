# Path to your oh-my-zsh installation.
  export ZSH=/home/verb/.oh-my-zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# plugins
plugins=(git fasd vi-mode zsh-autosuggestions zsh-completions zsh-syntax-highlighting tmuxinator history auto-ls)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# aliases
source $HOME/.aliases

# theme
source $HOME/.bin/prompts/lambda-mode.zsh-theme

# fasd
eval "$(fasd --init auto)"

# wal
(wal -r &)
