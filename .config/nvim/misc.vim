set spell spelllang=en_us

if has('vim_starting')
    set encoding=UTF-8
    scriptencoding UTF-8
endif

"" Completion {{{
set complete-=i
set completeopt=longest,menu,menuone,preview,noselect,noinsert
set list
" }}}

" Search {{{
set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed
" }}}

" Misc {{{
set shortmess=a
set laststatus=2
set noshowmode
set nowrap
set listchars=tab:┊\ ,nbsp:␣,trail:·,extends:>,precedes:<
set fillchars=vert:\│
set clipboard& clipboard+=unnamedplus
set history=2000
set updatetime=300
set undofile
set relativenumber
set hidden
set confirm
set autoread
set autowrite
set conceallevel=0

if &shell =~# 'fish$'
    set shell=sh
endif
" }}}

" Abbreviations {{{
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
" }}}

" folds {{{
set foldenable
set foldlevel=1
set foldlevelstart=10
set foldnestmax=10
" }}}

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
