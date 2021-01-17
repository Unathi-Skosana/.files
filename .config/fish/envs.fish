# PATHS
set -gx PATH $PATH $HOME/.local/bin/
set -gx PATH $PATH $HOME/go/bin
set -gx PATH $PATH $HOME/.gem/ruby/2.7.0/bin
set -gx PATH $PATH $HOME.gem/ruby/2.7.0/bin
set -gx PATH $PATH $HOME/.npm-global/bin
set -gx PATH $PATH $HOME/.bin
set -gx PATH $PATH /opt/anaconda/bin

# ENV VARIABLES
set -gx PROJECT_PATHS $HOME/repositories $HOME/playground $HOME/go/src/github.com $HOME/Dropbox $HOME/.config
set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim
set -x -U GOPATH $HOME/go
set -gx VIMPATH /home/nyx/.config/nvim
set -gx JUPYTERLAB_DIR $HOME/.local/share/jupyter/lab
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx WIKI_PATH $HOME/Dropbox/wiki
set -gx FZF_DEFAULT_COMMAND 'fd -H'
set -gx FZF_DEFAULT_OPTS "
 --color=fg:#a9b1d6,bg:#1a1b26,hl:#449dab
 --color=fg+:#acb0d0,bg+:#1a1b26,hl+:#0db9d7
 --color=info:#9ece6a,prompt:#f7768e,pointer:#bb9af7
 --color=marker:#b9f27c,spinner:#ff9e64,header:#7aa2f7'
"
