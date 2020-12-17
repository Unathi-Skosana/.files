if exists(':Dispatch')
  nnoremap <buffer><silent> <F5> :<C-U>Dispatch python -u "%"<CR>

  if executable('black')
    nnoremap <localleader>f :<C-U>Dispatch black "%"<CR>
  endif
endif

" Do not wrap Python source code.
set nowrap
set sidescroll=5
set sidescrolloff=2
set colorcolumn=100
