syntax enable
filetype plugin on


" Colors and styling {{{
highlight Comment cterm=italic
hi link xmlEndTag xmlTag
hi htmlArg gui=italic
hi Comment gui=italic
hi Type gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type cterm=italic
"  Italic garbage
let &t_8f="\<Esc>[38;2%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
"}}}

set spell spelllang=en_us spellfile=$VIM_PATH/spell/en.utf-8.add
set autoread
set autowrite
set confirm
set splitbelow
set bsdir=buffer

if has('vim_starting')
	set encoding=UTF-8
	scriptencoding UTF-8
endif

set laststatus=2
set showtabline=2
set statusline=-        " hide file name in statusline
set fillchars+=vert:\|  " add a bar for vertical splits
set clipboard& clipboard+=unnamedplus
set history=2000
set number
set timeout ttimeout
set cmdheight=2         " Height of the command line
set timeoutlen=500
set ttimeoutlen=10
set updatetime=100
set undofile
set relativenumber
set backspace=2
set backspace=indent,eol,start

" Tabs and Indents {{{
" ----------------
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set autoindent
set smartindent
set shiftround
" }}}

set hidden
set shortmess=aFc
set signcolumn=yes

set completefunc=emoji#complete
set completeopt=longest,menu,menuone,preview,noselect,noinsert
set completeopt-=preview
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←

set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed
set grepprg=rg\ --vimgrep\ $*
set wildignore+=*.so,*~,*/.git/*,*/.svn/*,*/.DS_Store,*/tmp/*


set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//
set undodir=~/.config/nvim/undo//

if has('conceal')
	set conceallevel=3 concealcursor=niv
endif


" History saving
if has('nvim')
	set shada='300,<50,@100,s10,h
else
	set viminfo='300,<10,@50,h,n$DATA_PATH/viminfo
endif

" If sudo, disable vim swap/backup/undo/shada/viminfo writing
if $SUDO_USER !=# '' && $USER !=# $SUDO_USER
		\ && $HOME !=# expand('~'.$USER)
		\ && $HOME ==# expand('~'.$SUDO_USER)

	set noswapfile
	set nobackup
	set nowritebackup
	set noundofile
	if has('nvim')
		set shada="NONE"
	else
		set viminfo="NONE"
	endif
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

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" google calendar_google_calendar
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" vim-tex
let g:tex_flavor = 'latex'
let g:tex_conceal = ""

let g:vimtex_view_method = 'zathura'
let g:vimtex_view_automatic = 0
let g:vimtex_latexmk_callback = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_quickfix_ignore_all_warnings=0
let g:vimtex_quickfix_ignored_warnings = [ 'Underfull', 'Overfull', 'specifier changed to',]
let g:vimtex_quickfix=2 
let g:vimtex_fold_automatic=0
let g:vimtex_fold_enabled=1

"" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
