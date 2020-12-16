" auto change directories
set shell=/usr/bin/fish
set autochdir

" leaders {{{
let mapleader=" "
let maplocalleader="-"
" }}}

" Syntax, colors and styling {{{
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_disable_italic_comment = 1

colorscheme tokyonight

" supertab {{{
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
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

" Completion {{{
	set complete-=i
	set completeopt=longest,menu,menuone,preview,noselect,noinsert
" }}}

" Misc {{{
	set spell spelllang=en_us
	set list
	set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
	set clipboard^=unnamed,unnamedplus
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
	set textwidth=80
	set formatoptions+=t
	set smarttab
	set shiftround

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
	set foldmethod=marker
	set nofoldenable
	set foldlevel=2
	set foldnestmax=10
" }}}

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
