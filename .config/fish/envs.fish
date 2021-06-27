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
set -gx LANG en_US.UTF-8
set -x -U GOPATH $HOME/go
set -gx VIMPATH /home/nyx/.config/nvim
set -gx JUPYTERLAB_DIR $HOME/.local/share/jupyter/lab
set -gx WIKI_PATH $HOME/Dropbox/wiki
set -gx FZF_DEFAULT_COMMAND 'fd -H'
set -gx FZF_DEFAULT_OPTS "
    --color=fg:#c0caf5,bg:#242838,hl:#bb9af7 
    --color=fg+:#a9b1d6,bg+:#242838,hl+:#bb9af7
    --color=info:#db4b4b,prompt:#7dcfff,pointer:#7dcfff 
    --color=marker:#7aa2f7,spinner:#e0af86,header:#f7768e
"
