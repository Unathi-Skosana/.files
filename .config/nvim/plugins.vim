" Vim has a package manager! Let's use as much as we can and let minpac take
" us the rest of the way!
packadd minpac

if !exists('*minpac#init')
  " minpac is not available.

  " Settings for plugin-less environment.
  " ...
else
  " minpac is available.
  " init with verbosity 3 to see minpac work
  call minpac#init({'verbose': 3})
  call minpac#add('k-takata/minpac', {'type': 'opt'})
endif

call minpac#add('easymotion/vim-easymotion')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-endwise')
call minpac#add('neomake/neomake')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('liuchengxu/vista.vim')
call minpac#add('majutsushi/tagbar')
call minpac#add('junegunn/goyo.vim')
call minpac#add('t9md/vim-choosewin')
call minpac#add('challenger-deep-theme/vim', { 'name': 'challenger-deep' })
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('shime/vim-livedown')
call minpac#add('sainnhe/lightline_foobar.vim')
call minpac#add('janko/vim-test')
call minpac#add('vimwiki/vimwiki')
call minpac#add('blindFS/vim-taskwarrior')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('tbabej/taskwiki')
call minpac#add('scrooloose/nerdtree')
call minpac#add('itchyny/lightline.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('niklaas/lightline-gitdiff')
call minpac#add('rhysd/git-messenger.vim')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('w0rp/ale')
call minpac#add('yuttie/comfortable-motion.vim')
call minpac#add('wakatime/vim-wakatime')

" My additions
call minpac#add('fatih/vim-go')
call minpac#add('mhinz/vim-startify')
call minpac#add('Yggdroot/indentLine')
call minpac#add('kana/vim-operator-replace')
call minpac#add('simnalamburt/vim-mundo')
call minpac#add('tyru/caw.vim')
call minpac#add('neoclide/vim-easygit')
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
call minpac#add('ervandew/supertab')
call minpac#add('lervag/vimtex')
call minpac#add('kana/vim-repeat')
call minpac#add('tyru/caw.vim')

if isdirectory('/usr/local/opt/fzf')
  call minpac#add('/usr/local/opt/fzf') | call minpac#add('junegunn/fzf.vim')
else
  call minpac#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' })
  call minpac#add('junegunn/fzf.vim')
endif
