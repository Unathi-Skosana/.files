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


" Themes
call minpac#add('challenger-deep-theme/vim', { 'name': 'challenger-deep' })
" Made optional so that we can load vim faster
" See SwitchColorScheme for function that loads these when swapping scheme
call minpac#add('ayu-theme/ayu-vim', {'type': 'opt'})

call minpac#add('machakann/vim-highlightedyank')
call minpac#add('shime/vim-livedown')
call minpac#add('sainnhe/lightline_foobar.vim')
call minpac#add('othree/yajs.vim')
call minpac#add('moll/vim-node')
call minpac#add('vim-scripts/SyntaxComplete')
call minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')
call minpac#add('janko/vim-test')
call minpac#add('vimwiki/vimwiki')
call minpac#add('blindFS/vim-taskwarrior')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('tbabej/taskwiki')
call minpac#add('pangloss/vim-javascript')
call minpac#add('scrooloose/nerdtree')
call minpac#add('itchyny/lightline.vim')
call minpac#add('itchyny/calendar.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('niklaas/lightline-gitdiff')
call minpac#add('rhysd/git-messenger.vim')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('w0rp/ale')
call minpac#add('yuttie/comfortable-motion.vim')
call minpac#add('wakatime/vim-wakatime')
call minpac#add('mxw/vim-jsx')
call minpac#add('heavenshell/vim-jsdoc')
call minpac#add('ryanoasis/vim-devicons')

" My additions
call minpac#add('fatih/vim-go')
call minpac#add('lervag/vimtex')
call minpac#add('mhinz/vim-startify')
call minpac#add('junegunn/fzf')
call minpac#add('Yggdroot/indentLine')
call minpac#add('kana/vim-operator-use')
call minpac#add('kana/vim-operator-replace')
call minpac#add('simnalamburt/vim-mundo')
call minpac#add('tyru/caw.vim')
call minpac#add('neoclide/vim-easygit')
