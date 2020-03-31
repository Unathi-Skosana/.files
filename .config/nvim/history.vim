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

" Disable swap/undo/viminfo/shada files in temp directories or shm
augroup user_secure
    autocmd!
    silent! autocmd BufNewFile,BufReadPre
                \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim
                \ setlocal noswapfile noundofile nobackup nowritebackup viminfo= shada=
augroup END




