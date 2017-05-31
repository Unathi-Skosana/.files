 if &compatible
   set nocompatible
 endif
 filetype on
 
 " append to runtime path
 set rtp+=/usr/share/vim/vimfiles
 " initialize dein, plugins are installed to this directory
 call dein#begin(expand('~/.cache/dein'))

 " add packages here, e.g:
 call dein#add('Valloric/YouCompleteMe')
 call dein#add('Shougo/deoplete.nvim', { 'do': ':UpRemotePlugins' })
 call dein#add('Shougo/denite.nvim')
 call dein#add('Shougo/vimfiler')
 call dein#add('scrooloose/nerdtree')
 call dein#add('Yggdroot/indentLine')
 call dein#add('airblade/vim-gitgutter')
 call dein#add('SirVer/ultisnips')
 call dein#add('honza/vim-snippets')


 " exit dein
 call dein#end()
 " auto-install missing packages on startup
 if dein#check_install()
   call dein#install()
 endif
 filetype plugin on

 "End dein Scripts-------------------------

 set pastetoggle=<F2>
 set clipboard=unnamed
 let mapleader = ";"
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation

 " Colors 
 set background=dark
 colorscheme wal

 " Editor settings
 set tabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab
 set noswapfile
 set list
 set wrap
 set linebreak
 set relativenumber
 set number
 set undofile
 set undodir=~/.config/nvim/temp/undodir
 set completeopt-=preview
 let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

 " Search settings
 set hlsearch
 set ignorecase
 set smartcase

 " Ultisnips
 let g:UltiSnipsExpandTrigger="<c-a>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " Vimfiler
 let g:vimfiler_as_default_explorer = 1

 " Unmaps the arrow keys
 map <Up>    <nop>
 map <Down>  <nop>
 map <Left>  <nop>
 map <Right> <nop>

set statusline=%=%P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=1
set noshowmode

 "" deoplete
 let g:deoplete#enable_at_startup = 1
