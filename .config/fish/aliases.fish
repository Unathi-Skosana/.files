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

# yadm
alias ycot 'yadm commit -m'
alias ya 'yadm add'
alias yall 'yadm add -A'
alias yp 'yadm push'
alias yc 'yadm commit -m'
alias yam 'yadm commit --amend'
alias yre 'yadm remote add'
alias yst 'yadm status'
alias ylog 'yadm log'
alias ycl 'yadm clone'

# general commands
alias v 'nvim'
alias vo 'nvim (fzf --preview="cat {}" --preview-window=right:70%:wrap)'
alias c 'clear'
alias py 'python'
alias cat 'bat'
alias cf 'source $HOME/.config/fish/config.fish;clear'
alias l 'exa'
alias j 'pj'
alias t 'exa --tree -L 1'
alias ydl 'youtube-dl'
alias gdl 'gitdir'
alias m 'python $HOME/.bin/t.py --task-dir ~/tasks --list miscellaneous'
alias s 'python $HOME/.bin/t.py --task-dir ~/tasks --list school'

# pacman aliases
alias pac 'pacman -S'        # install
alias pacu 'pacman -Syu'     # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr 'pacman -Rs'      # remove
alias pacs 'pacman -Ss'      # search
alias paci 'pacman -Si'      # info
alias paclo 'pacman -Qdt'    # list orphans
alias pacc 'pacman -Scc'    # clean cache
alias paclf 'pacman -Ql'    # list files
