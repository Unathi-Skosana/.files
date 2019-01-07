# git commands
alias gcot 'git commit -m'
alias ga 'git add'
alias gp 'git push'
alias gam 'git commit --amend'
alias gre 'git remote add'

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
alias py2 'python2'
alias connect 'nmcli dev wifi connect'

# pacman aliases
alias pac 'pacman -S'        # install
alias pacu 'pacman -Syu'     # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr 'pacman -Rs'      # remove
alias pacs 'pacman -Ss'      # search
alias paci 'pacman -Si'      # info
alias paclo 'pacman -Qdt'    # list orphans
alias pacc 'pacman -Scc'    # clean cache
alias paclf 'pacman -Ql'    # list files
alias yaur 'yaourt'

function pacro
    paclo; and sudo pacman -Rns (pacman -Qtdq);
end
