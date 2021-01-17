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

" note taking commands
command! -bang -nargs=1 Vwc execute ':!vwc '.<q-args>
command! -bang -nargs=* Notes call fzf#vim#grep("find $WIKI_PATH -iname \"*.md\"
      \| xargs rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1, <bang>0)

nnoremap <buffer> <silent> <localleader>[ :Vwc
nnoremap <buffer> <silent> <localleader>] :Vwc %:p <CR>
nnoremap <buffer> <localleader>r :MarkdownPreview<CR>
nnoremap <silent> <buffer> <localleader>f :Goyo 75%x100%<CR>

" vim:set ft=vim et sw=2:
