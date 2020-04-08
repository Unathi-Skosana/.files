" Syntax, colors and styling {{
syntax enable
filetype off
filetype plugin on
syntax on
filetype plugin indent on



" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme base16-tomorrow-night


hi LineNr         guibg=NONE guifg=NONE
hi Normal         guibg=NONE guifg=NONE
hi CursorLine     guibg=NONE    guifg=NONE
hi CursorLineNr   guibg=NONE    guifg=NONE
hi PrimaryBlock   guibg=NONE guifg=#4A5568
hi ModeBlock      guibg=NONE guifg=#FBD38D
hi SecondaryBlock guibg=NONE guifg=#4A5568
hi TeritaryBlock  guibg=NONE guifg=#FC8181
hi Blanks         guibg=NONE
hi SpellBad       guibg=NONE    guifg=#F56565
hi ColorColumn    guibg=NONE guifg=#718096
hi SignColumn     guibg=NONE guifg=NONE
" }}




" statusline {{
let g:currentmode={
    \ 'n'  : 'N ',
    \ 'no' : 'NO',
    \ 'v'  : 'V ',
    \ 'V'  : 'V ',
    \ '' : 'V ',
    \ 's'  : 'S ',
    \ 'S'  : 'S ',
    \ '' : 'S ',
    \ 'i'  : 'I ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V ',
    \ 'c'  : 'C ',
    \ 'cv' : 'V EX ',
    \ 'ce' : 'E ',
    \ 'r'  : 'P ',
    \ 'rm' : 'M ',
    \ 'r?' : 'C ',
    \ '!'  : 'S ',
    \ 't'  : 'T '}

set statusline=
set statusline+=%#ModeBlock#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#TeritaryBlock#
set statusline+=\ %f\ 
set statusline+=%M\ 
set statusline+=%#Blanks#
set statusline+=%=
set statusline+=%#PrimaryBlock#
set statusline+=\ %Y\ 
set statusline+=%#SecondaryBlock#
set statusline+=\ %p
"}}
