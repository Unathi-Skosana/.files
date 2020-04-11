# git commands
alias gcot 'git commit -m'
alias ga 'git add'
alias gall 'git add -A'
alias gp 'git push'
alias gc 'git commit -m'
alias gam 'git commit --amend'
alias gre 'git remote add'
alias gst 'git status'
alias glog 'git log'
alias gcl 'git clone'

# fasd
alias a 'fasd -a'        # any
alias s 'fasd -si'       # show / search / select
alias d 'fasd -d'        # directory
alias f 'fasd -f'        # file
alias sd 'fasd -sid'     # interactive directory selection
alias sf 'fasd -sif'     # interactive file selection
alias z 'fasd_cd -d'     # cd, same functionality as j in autojump
alias zz 'fasd_cd -d -i' # cd with interactive selection
alias wa 'f -e mpv'

# general commands
alias py 'python'
alias v 'nvim'
alias cat 'bat'
alias ls 'exa'
alias vrc 'nvim $HOME/.config/nvim'
alias frc 'nvim $HOME/.config/fish'
alias xrc 'nvim $HOME/.x'
alias termrc 'nvim $HOME/.config/kitty/kitty.conf'
alias ydl 'youtube-dl'
alias gdl 'gitdir'
alias jnb 'jupyter notebook'
alias m='python $HOME/.bin/t.py --task-dir ~/tasks --list miscellaneous'
alias a='python $HOME/.bin/t.py --task-dir ~/tasks --list academics'

# pacman aliases
alias pac 'pacman -S'        # install
alias pacu 'pacman -Syu'     # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr 'pacman -Rs'      # remove
alias pacs 'pacman -Ss'      # search
alias paci 'pacman -Si'      # info
alias paclo 'pacman -Qdt'    # list orphans
alias pacc 'pacman -Scc'    # clean cache
alias paclf 'pacman -Ql'    # list files

function pacro
    paclo; and sudo pacman -Rns (pacman -Qtdq);
end

function new_folder_from_template
    mkdir -p $argv[2]
    cp -RT $HOME/Templates/$argv[1] $argv[2]
end
