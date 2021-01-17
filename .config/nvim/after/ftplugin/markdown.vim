autocmd BufWinEnter *.md set syntax=markdown

set wrap
set linebreak
set textwidth=0
set wrapmargin=0
set autoindent smartindent

" Rebind uppercase versions of h,l to do 'extreme' movements
nnoremap H ^
nnoremap L $

" Move by visual line
nnoremap j gj
nnoremap k gk

nnoremap <buffer> <localleader>r :MarkdownPreview<CR>
nnoremap <silent> <buffer> <localleader>f :Goyo 75%x100%<CR>

" vim:set ft=vim et sw=2:
