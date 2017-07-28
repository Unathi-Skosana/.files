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
 call dein#add('scrooloose/nerdtree')
 call dein#add('Yggdroot/indentLine')
 call dein#add('jiangmiao/auto-pairs')
 call dein#add('airblade/vim-gitgutter')
 call dein#add('SirVer/ultisnips')
 call dein#add('honza/vim-snippets')
 call dein#add('godlygeek/tabular')
 call dein#add('plasticboy/vim-markdown')
 call dein#add('farmergreg/vim-lastplace')
 call dein#add('arcticicestudio/nord-vim')

 " exit dein
 call dein#end()
 " auto-install missing packages on startup
 if dein#check_install()
   call dein#install()
 endif
 filetype plugin indent on

 "End dein Scripts-------------------------

 set pastetoggle=<F2>
 set clipboard=unnamed
 let mapleader = ";"
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation

 " Colors 
 set background=dark
 colorscheme nord

 " Editor settings
 set expandtab
 set tabstop=4
 set shiftwidth=4
 set softtabstop=4
 set shiftround
 set noswapfile
 set wrap
 set linebreak
 set number
 set relativenumber
 set undofile
 set undodir=~/.config/nvim/temp/undodir
 set completeopt-=preview
 let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

 " Search settings
 set hlsearch
 set ignorecase
 set smartcase

 " Ultisnips
 let g:UltiSnipsExpandTrigger="<c-a>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

 " Markdown-mode
 let g:vim_markdown_toc_autofit = 1
 let g:vim_markdown_json_frontmatter = 1
 let g:vim_markdown_math = 1


 " Last place  
 let g:lastplace_ignore_buftype = "quickfix,nofile,help"
 
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


 "" tabular settings
 nnoremap <silent> <Leader>a= :Tabularize /=<CR>
 vnoremap <silent> <Leader>a= :Tabularize /=<CR>
 nnoremap <silent> <Leader>a: :Tabularize /:\zs<CR>
 vnoremap <silent> <Leader>a: :Tabularize /:\zs<CR>
    
 " auto align on pipes
 inoremap <silent> <Bar> <Bar><Esc>:call <SID>pipe_align()<CR>a
 function! s:pipe_align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
 endfunction
