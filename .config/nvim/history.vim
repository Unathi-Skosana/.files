set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//
set undodir=~/.config/nvim/undo//

set shada='300,<50,@100,s10,h

" If sudo, disable vim swap/backup/undo/shada/viminfo writing
if $SUDO_USER !=# '' && $USER !=# $SUDO_USER
            \ && $HOME !=# expand('~'.$USER)
            \ && $HOME ==# expand('~'.$SUDO_USER)
    set noswapfile
    set nobackup
    set nowritebackup
    set noundofile
    set shada="NONE"
endif

" Secure sensitive information, disable backup files in temp directories
if exists('&backupskip')
    set backupskip+=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*
    set backupskip+=.vault.vim
endif

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
