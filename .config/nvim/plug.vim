if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lynx/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lynx/.cache/dein')
    call dein#begin('/home/lynx/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/lynx/.cache/dein/repos/github.com/Shougo/dein.vim')

    "  File types
    call dein#add('godlygeek/tabular', { 'on_cmd' : [ 'Tab', 'Tabularize' ] , 'augroup' : 'tabular' })
    call dein#add('plasticboy/vim-markdown')
    call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd', 'vimwiki'],
					\ 'build': 'sh -c "cd app & yarn install"' })
    call dein#add('lervag/vimtex')
    call dein#add('vimwiki/vimwiki')
    call dein#add('pangloss/vim-javascript')
    call dein#add('mxw/vim-jsx')
    call dein#add('vim-python/python-syntax')
    call dein#add('groenewege/vim-less')
    call dein#add('jparise/vim-graphql')
    call dein#add('hail2u/vim-css3-syntax', {'on_ft': ['css'] })
    call dein#add('othree/csscomplete.vim', { 'on_ft': ['css'] })
    call dein#add('cakebaker/scss-syntax.vim', { 'on_ft': [ 'scss', 'sass' ]})
    call dein#add('fatih/vim-go')


    " Completion, Tests, LSP
    call dein#add('tpope/vim-dispatch')
    call dein#add('neomake/neomake')
    call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
    call dein#add('janko/vim-test')
    call dein#add('universal-ctags/ctags')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('ervandew/supertab')

    " UI
    call dein#add('majutsushi/tagbar')
    call dein#add('rhysd/git-messenger.vim')
    call dein#add('junegunn/goyo.vim')
    call dein#add('junegunn/limelight.vim')
    call dein#add('Yggdroot/indentLine')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('mhinz/vim-startify')
    call dein#add('simnalamburt/vim-mundo')
    call dein#add('Shougo/defx.nvim')

    " Utils
    call dein#add('tpope/vim-surround', {'on_map': {'n' : ['cs', 'ds', 'ys'], 'x' : 'S'}, 'depends' : 'vim-repeat'})
    call dein#add('tpope/vim-commentary', {'on_map': ['gcc', 'gcap', 'gc'], 'on_cmd': ['Commentary']})
    call dein#add('tpope/vim-fugitive',  { 'on_cmd': [ 'Git', 'Gstatus', 'Gwrite', 'Glog', 'Gcommit', 'Gblame', 'Ggrep', 'Gdiff', ] })
    call dein#add('tpope/vim-obsession')
    call dein#add('tpope/vim-repeat',  {'on_map' : '.'})
    call dein#add('kana/vim-operator-user')
    call dein#add('kana/vim-textobj-user')
    call dein#add('kana/vim-operator-replace', {'on_map': { 'vnx': '<Plug>' }})
    call dein#add('junegunn/vim-easy-align')
    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
    call dein#add('Raimondi/delimitMate', {'on_map' : { 'i' : ['(', '[', '{' ] }})
    call dein#add('SirVer/ultisnips', {'on_map' : { 'i' : ['<c-l>', '<c-j>'] }})
    call dein#add('honza/vim-snippets')
    call dein#add('christoomey/vim-tmux-navigator')
    call dein#add('easymotion/vim-easymotion')
    call dein#add('yuttie/comfortable-motion.vim')
    call dein#add('wakatime/vim-wakatime')
    call dein#add('z0mbix/vim-shfmt', { 'for': 'sh' })

      " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"command! PacAdd call dein#add()
"command! -bang PacUpdate call dein#update()
"command! PacClean call dein#clean()
"command! PacStatus call dein#status()
