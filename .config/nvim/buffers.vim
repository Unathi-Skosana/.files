cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <silent> <C-f> :BLines<CR>
nnoremap <silent> <leader>f :Lines<CR>
nnoremap <silent> <leader>t :BTags<CR>
nnoremap <silent> <C-p> :call fzf#vim#files('.', {'options': '--prompt ""'})<CR>
"
"Recovery commands from history through FZF
nmap <leader>y :History:<CR>
