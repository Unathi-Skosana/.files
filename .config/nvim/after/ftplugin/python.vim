if exists(':Dispatch')
  nnoremap <buffer><silent> <F5> :<C-U>Dispatch python -u "%"<CR>
endif

" Do not wrap Python source code.
set nowrap
set sidescroll=5
set sidescrolloff=2
set colorcolumn=100
