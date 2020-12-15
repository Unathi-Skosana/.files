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

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
