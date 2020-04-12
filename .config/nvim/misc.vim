set spell spelllang=en_us

if has('vim_starting')
    set encoding=UTF-8
    scriptencoding UTF-8
endif


"" Completion {{
set complete-=i
set completeopt=longest,menu,menuone,preview,noselect,noinsert
set list
" }}

" Search {{
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
" }}

if has('conceal')
    set conceallevel=3 concealcursor=niv
endif

" Return to last edit position when opening files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

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


" Abbreviations
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

" folds {{
set foldenable
set foldlevel=1
set foldlevelstart=10
set foldnestmax=10
" }}
