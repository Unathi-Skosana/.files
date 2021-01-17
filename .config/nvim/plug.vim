" Required:
  set runtimepath+=/home/lynx/.cache/dein/repos/github.com/Shougo/dein.vim

  " Required:
  if dein#load_state('/home/lynx/.cache/dein')
    call dein#begin('/home/lynx/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/lynx/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Local plugins
    call dein#local('$VIM_PATH/local')

    " highlight url links
    call dein#add('itchyny/vim-highlighturl')

    " Handy unix command inside Vim (Rename, Move etc.)
    call dein#add('tpope/vim-eunuch')

    " typesetting
    call dein#add('godlygeek/tabular', { 'on_cmd' : [ 'Tab', 'Tabularize' ] , 'augroup' : 'tabular' })
    call dein#add('plasticboy/vim-markdown')
    call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'markdown.pandoc', 'rmd', 'vimwiki'],
					\ 'build': 'sh -c "cd app & yarn install"' })
    call dein#add('vimwiki/vimwiki')
    call dein#add('lervag/vimtex')

    " go
    call dein#add('fatih/vim-go')

    " json
    call dein#add('elzr/vim-json', {'on_ft': ['json', 'markdown']})
    
    "python
    call dein#add('numirias/semshi')

    " js, jsx & graphql
    call dein#add('jparise/vim-graphql')
    call dein#add('pangloss/vim-javascript')
    call dein#add('chemzqm/vim-jsx-improve')

    " shell
    call dein#add('georgewitteman/vim-fish')
    call dein#add('z0mbix/vim-shfmt', { 'for': 'sh' })

    " tests, lsp & completion
    call dein#add('janko/vim-test')
    call dein#add('tpope/vim-dispatch')
    call dein#add('neomake/neomake')
    call dein#add('neoclide/coc.nvim', {'merged': 0, 'rev': 'release'})
    call dein#add('prettier/vim-prettier')

    " ctags
    call dein#add('universal-ctags/ctags')
    call dein#add('liuchengxu/vista.vim')

    " supertab
    call dein#add('ervandew/supertab')

    " vim text alignment
    call dein#add('junegunn/vim-easy-align')

    " repeat vim motions
    call dein#add('tpope/vim-repeat',  {'on_map' : '.'})

    " pairs manipulation
    call dein#add('tpope/vim-surround', {'on_map': {'n' : ['cs', 'ds', 'ys'], 'x' : 'S'}, 'depends' : 'vim-repeat'})

    " match pairs
    call dein#add('andymass/vim-matchup')

    " comment plugin
    call dein#add('tpope/vim-commentary', {'on_map': ['gcc', 'gcap', 'gc'], 'on_cmd': ['Commentary']})

    " vim git plugin
    call dein#add('tpope/vim-fugitive',  { 'on_cmd': [ 'Git', 'Gstatus', 'Gwrite', 'Glog', 'Gcommit', 'Gblame', 'Ggrep', 'Gdiff', ] })

    " save vim sessions
    call dein#add('tpope/vim-obsession')

    " fuzzy finder
    if executable('fzf') 
      call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
    endif

    " auto closing pairs
    call dein#add('jiangmiao/auto-pairs')

    " snippets
    call dein#add('SirVer/ultisnips', {'on_map' : { 'i' : ['<c-j>', '<c-k>'] }})
    call dein#add('honza/vim-snippets')
    "
    if executable('tmux')
      " navigate tmux vim splits
      call dein#add('christoomey/vim-tmux-navigator')


    " Let vim detect tmux focus event correctly, see
    " https://github.com/neovim/neovim/issues/9486 and
    " https://vi.stackexchange.com/q/18515/15292
      call dein#add('tmux-plugins/vim-tmux-focus-events')

    " .tmux.conf syntax highlighting and setting check
      call dein#add('tmux-plugins/vim-tmux', { 'for': 'tmux' })
    endif

    " collecting stats for time spent on various projects
    call dein#add('wakatime/vim-wakatime')

    " Clear highlight search automatically for you
    call dein#add('romainl/vim-cool')

    " themes
    call dein#add('ghifarit53/tokyonight-vim')
    call dein#add('lifepillar/vim-colortemplate')

    " indent markers
    call dein#add('Yggdroot/indentLine')

    " git gutter
    call dein#add('airblade/vim-gitgutter')

    " start screen
    call dein#add('mhinz/vim-startify')

    " undo history
    call dein#add('simnalamburt/vim-mundo', {'on_cmd': ['MundoHide', 'MundoShow', 'MundoToggle']})

    " highlight color codes
    call dein#add('norcalli/nvim-colorizer.lua', {
          \ 'on_event': 'FileType',
          \ 'hook_source': 'luafile ~/.config/nvim/colorizer.lua'
          \ })

    "  yanking & pasting
    call dein#add('bfredl/nvim-miniyank')
    call dein#add('ConradIrwin/vim-bracketed-paste') 

    " distraction-free writing
    call dein#add('junegunn/goyo.vim')
    call dein#add('junegunn/limelight.vim')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

" github api token for checking package updates
let g:dein#install_github_api_token="c714a533ff542a9be00be1dd1267152c25cef510"

command! -nargs=1 PacAdd call dein#add("<qargs>")
command! PacInstall call dein#install()
command! PacUpdate  call dein#update()
command! PacClean   call dein#recache_runtimepath()
command! PacStatus  call dein#check_update()

" colors {{{
  if exists('+termguicolors')
      "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
  endif

  let g:tokyonight_style = 'night' " available: night, storm
  let g:tokyonight_enable_italic = 1
  let g:tokyonight_disable_italic_comment = 1

  colorscheme tokyonight
" }}}

"
" super tab {{{
  let g:SuperTabMappingForward = '<tab>'
  let g:SuperTabMappingBackward = '<s-tab>'
  let g:SuperTabDefaultCompletionType = "<c-n>"
  let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
  let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
  let g:SuperTabContextDiscoverDiscovery =
      \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
  autocmd FileType *
      \ if &omnifunc != '' |
      \   call SuperTabChain(&omnifunc, "<c-n>") |
      \ endif
" }}}

" list of the extensions to make sure are always installed
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-ultisnips',
            \'coc-tailwindcss',
            \'coc-snippets',
            \'coc-pairs',
            \'coc-json',
            \'coc-actions',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-pyright',
            \'coc-clangd',
            \'coc-prettier',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-vimtex',
            \'coc-bibtex',
            \'coc-vimlsp',
            \'coc-tsserver',
            \'coc-sh',
            \'coc-markdownlint',
            \'coc-diagnostic'
            \]

" vim tex {{
  let g:tex_flavor = "latex"
  let g:tex_conceal = 0
  let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'build',
  \ }

  " TOC settings
  let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['content', 'todo', 'include'],
      \ 'resize' : 1,
      \ 'split_width' : 30,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 2,
  \ }
" }}

" vim-cool {{{
  let g:CoolTotalMatches = 1
" }}}

" markdown {{{
    " disable header folding
    let g:vim_markdown_folding_disabled = 1

    " do not use conceal feature, the implementation is not so good
    let g:vim_markdown_conceal = 0

    " disable math tex conceal feature
    let g:tex_conceal = ""
    let g:vim_markdown_math = 1

    " support front matter of various format
    let g:vim_markdown_frontmatter = 1  " for YAML format
    let g:vim_markdown_toml_frontmatter = 1  " for TOML format
    let g:vim_markdown_json_frontmatter = 1  " for JSON format
" }}}

" markdown-preview.nvim {{{
  " set to 1, the nvim will auto close current preview window when change
  " from markdown buffer to another buffer
  " default: 1
  let g:mkdp_auto_close = 0
  "
  " specify browser to open preview page
  " default: ''
  let g:mkdp_browser = 'firefox'

  " set to 1, echo preview page url in command line when open preview page
  " default is 0
  let g:mkdp_echo_preview_url = 0

  " options for markdown render
  " mkit: markdown-it options for render
  " katex: katex options for math
  " uml: markdown-it-plantuml options
  " maid: mermaid options
  " disable_sync_scroll: if disable sync scroll, default 0
  " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
  "   middle: mean the cursor position alway show at the middle of the preview page
  "   top: mean the vim top viewport alway show at the top of the preview page
  "   relative: mean the cursor position alway show at the relative positon of the preview page
  " hide_yaml_meta: if hide yaml metadata, default is 1
  " sequence_diagrams: js-sequence-diagrams options
  let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {}
      \ }

  " use a custom markdown style must be absolute path
  " like '/Users/username/markdown.css' or expand('~/markdown.css')
  let g:mkdp_markdown_css = '/home/lynx/.pandoc/markdown.css'

  " use a custom highlight style must absolute path
  " like '/Users/username/highlight.css' or expand('~/highlight.css')
  let g:mkdp_highlight_css = ''

  " use a custom port to start server or random for empty
  let g:mkdp_port = ''

  " preview page title
  " ${name} will be replace with the file name
  let g:mkdp_page_title = '「${name}」'
" }}}
"

" fixers {{{
  " Neomake & vim-test
  let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
  let g:neomake_open_list = 1
  let test#strategy = "neomake"
  let g:neomake_warning_sign = {
    \   'text': '◉'
    \ }
  let g:neomake_error_sign = {
    \   'text': '◉'
    \ }

  let g:dispatch_compilers = {'go': 'gotest', 'python': 'pytest'}

  let g:TESTING_STATUS = 'passing'

  " Show message that tests have started
  function! MyOnNeomakeJobStarted() abort
    let g:TESTING_STATUS = 'running'
  endfunction

  " Show message when all tests are passing
  function! MyOnNeomakeJobFinished() abort
    let context = g:neomake_hook_context
    if context.jobinfo.exit_code == 0
      let g:TESTING_STATUS = 'passing'
    endif
    if context.jobinfo.exit_code == 1
      let g:TESTING_STATUS = 'failing'
    endif
  endfunction

  let g:test#preserve_screen = 0
" }}}
"
" go {{{
  let g:go_fmt_command = "goimports"
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_generate_tags = 1
  
  "disable use K to run godoc
  let g:go_doc_keywordprg_enabled = 0
  let g:go_def_mapping_enabled = 0
" }}}

" fzf {{{
  " Always enable preview window on the right with 60% width
  let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

  " [Buffers] Jump to the existing window if possible
  let g:fzf_buffers_jump = 1

  " [[B]Commits] Customize the options used by 'git log':
  let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

  " [Tags] Command to generate tags file
  let g:fzf_tags_command = 'ctags -R'

  let g:fzf_commands_expect = 'alt-enter,ctrl-x'

  function! s:fzf_statusline()
    " Override statusline as you like
    highlight fzf1 ctermfg=161 ctermbg=251
    highlight fzf2 ctermfg=23 ctermbg=251
    highlight fzf3 ctermfg=237 ctermbg=251
    setlocal statusline=%#fzf1#\ $\ %#fzf2#fz%#fzf3#f
  endfunction

  autocmd! User FzfStatusLine call <SID>fzf_statusline()

" }}}


" git gutter {{{
  let g:gitgutter_sign_added = '+'
  let g:gitgutter_sign_modified = '~'
  let g:gitgutter_sign_removed = '-'
  let g:gitgutter_sign_removed_first_line = '-'
  let g:gitgutter_sign_modified_removed = '~'

  highlight GitGutterDelete guifg=#F56565 guibg=NONE
  highlight GitGutterAdd    guifg=#48BB78 guibg=NONE
  highlight GitGutterChange guifg=#ECC94B guibg=NONE
" }}}

" indent line {{{
  let g:indentline_enabled = 1
  let g:indentline_char_list=['▏', '¦', '┆', '┊']
  let g:indentLine_fileTypeExclude = ['defx', 'denite','startify','tagbar','vista_kind','vista']
  let g:indentLine_setColors = 0
  let g:indentLine_setConceal = 0
" }}}

" vim wiki {{{
  let default_wiki = {}
  let default_wiki.path = '~/Dropbox/wiki/'
  let default_wiki.syntax = 'markdown'
  let default_wiki.ext = '.md'
  let default_wiki.auto_diary_index = 0

  let code_wiki = {}
  let code_wiki.path = '~/Dropbox/wiki/coding'
  let code_wiki.syntax = 'markdown'
  let code_wiki.ext = '.md'
  let code_wiki.auto_diary_index = 1

  let academics_wiki = {}
  let academics_wiki.path = '~/Dropbox/wiki/academics'
  let academics_wiki.syntax = 'markdown'
  let academics_wiki.ext = '.md'
  let academics_wiki.auto_diary_index = 1

  let books_wiki = {}
  let books_wiki.path = '~/Dropbox/wiki/books'
  let books_wiki.syntax = 'markdown'
  let books_wiki.ext = '.md'
  let books_wiki.auto_diary_index = 1

  let cheats_wiki = {}
  let cheats_wiki.path = '~/Dropbox/wiki/cheats'
  let cheats_wiki.syntax = 'markdown'
  let cheats_wiki.ext = '.md'
  let cheats_wiki.auto_diary_index = 1

  let g:vimwiki_table_mappings = 0
  let g:vimwiki_global_ext = 0
  let g:vimwiki_list = [default_wiki,books_wiki,code_wiki,academics_wiki,cheats_wiki]
  let g:taskwiki_markup_syntax = 'markdown'
  let g:vimwiki_ext2syntax = {}
  let g:vimwiki_listsyms = '✗○◐●✓'
" }}}

" startify {{{
  " bookmarks
  let g:startify_bookmarks = [
        \ {'a' : '~/.config/alacritty/alacritty.yml'},
        \ {'v' : '~/.config/nvim/init.vim'},
        \ {'r' : '~/repositories/'},
        \ {'d' : '~/Dropbox/'}
        \ ]

  " custom commands
  let g:startify_commands = [
    \ {'ch':  ['Health Check', ':checkhealth']},
    \ {'ps': ['Packages status', ':PacStatus']},
    \ {'pu': ['Packages updates',':PacUpdate']},
    \ {'uc': ['Update coc Plugins', ':CocUpdate']},
    \ {'h':  ['Help', ':help']},
    \ ]

  let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'files',     'header': ['   Recent Files']   },
            \ { 'type': 'dir',       'header': ['   Recent Files in: '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]
  let g:startify_custom_header = systemlist('fortune -s | cowsay -f (cowsay -l | tail -n +2  | tr " " "\n" | shuf -n 1) | lolcat')
" }}}

" vista {{{
  let g:vista_executive_for = {
        \ 'c': 'coc',
        \ }
  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
  let g:vista_sidebar_width = 50
  "
  " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
  let g:vista#renderer#enable_icon = 1
  let g:vista#renderer#icons = {
  \   "function": "\uf794",
  \   "variable": "\uf71b",
  \  }

  let g:vista#renderer#icons = {
        \ 'member': '',
        \ }

  " Do not echo message on command line
  let g:vista_echo_cursor = 0

  " Stay in current window when vista window is opened
  let g:vista_stay_on_open = 0

  augroup matchup_conf
    autocmd!
    " Double mouse click to go to a tag
    autocmd FileType vista* nnoremap <buffer> <silent>
          \ <2-LeftMouse> :<C-U>call vista#cursor#FoldOrJump()<CR>
    " Quit Neovim if vista window is the only window
    autocmd BufEnter * call s:close_vista_win()
  augroup END

  function! s:close_vista_win() abort
    if winnr('$') == 1 && getbufvar(bufnr(), '&filetype') ==# 'vista'
      quit
    endif
  endfunction
" }}}

" Goyo & Limelight {{{
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
" }}}

"vim:set ft=vim et sw=2:
