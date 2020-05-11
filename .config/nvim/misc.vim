" Completion {{{
set complete-=i
set completeopt=longest,menu,menuone,preview,noselect,noinsert
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
set spell spelllang=en_us
set shortmess=a
set cmdheight=2
set laststatus=2
set noshowmode
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
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
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=-1
set textwidth=80
set smarttab
set autoindent
set shiftround
set wrap linebreak nolist

if has('vim_starting')
    set encoding=UTF-8
    scriptencoding UTF-8
endif

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
"
" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
" }}}


" custom commands
command! -bang -nargs=1 Vwc execute ':!vwc '.<q-args>
command! -bang -nargs=* Notes call fzf#vim#grep("find $WIKI_PATH -iname \"*.md\" 
      \| xargs rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1, <bang>0)
nnoremap <leader>[ :Vwc 
nnoremap <leader>] :Vwc %:p <CR>

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
