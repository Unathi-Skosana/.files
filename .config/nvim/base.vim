scriptencoding UTF-8

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
" }}}

" supertab {{{
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
		\ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

autocmd FileType *
	\ if &omnifunc != '' |
	\   call SuperTabChain(&omnifunc, "<c-p>") |
	\ endif

" }}}

" Completion behaviour {{
	set completeopt+=menuone  " Show menu even if there is only one item
	set completeopt-=preview  " Disable the preview window
	set pumheight=10  " Maximum number of items to show in popup menu

	" Insert mode key word completion setting
	set complete+=kspell complete-=w complete-=b complete-=u complete-=t
" }}}

" Misc {{{
	" File and script encoding settings for vim
	set encoding=UTF-8

	" Search ignoring case & Keep case when searching with *
	set ignorecase smartcase

	" Character to show before the lines that have been soft-wrapped
	set showbreak=↪

	" Do not show "match xx of xx" and other messages during auto-completion
	set shortmess+=c

	" auto change directories
	set autochdir

	" fish shell as default
	set shell=/usr/bin/fish

	" General tab settings
	set tabstop=4       " number of visual spaces per TAB
	set softtabstop=4   " number of spaces in tab when editing
	set shiftwidth=4    " number of spaces to use for autoindent
	set shiftround      " round indent to multiple of shiftwidth
	set expandtab       " expand tab to spaces so that tabs are spaces

	" spelling language
	set spell spelllang=en_us

	" Use list mode and customized list chars
	set list
	set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<

	" Clipboard settings, always use clipboard for all delete, yank, change, put
	" operation, see https://stackoverflow.com/q/30691466/6064933
	if !empty(provider#clipboard#Executable())
		set clipboard+=unnamedplus
	endif

	" The number of command and search history to keep
	set history=500

	" The number of seconds of inactivity before swap file is written to disk
	set updatetime=750

	" show numbers relative to current position
	set relativenumber
	"
	" Persistent undo even after you close a file and re-open it
	set undofile

" Ask for confirmation when handling unsaved or read-only files
	set confirm

	" autowrite file on certain circumstances
	set autowrite

	" folding method
	set foldmethod=marker

	" open folds by default
	set nofoldenable

	" set fold level
	set foldlevel=5

	" deepest fold nest
	set foldnestmax=5
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

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
