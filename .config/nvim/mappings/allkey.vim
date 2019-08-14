"Plugin key settings

" Coc {{
" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>cr  :<C-u>CocListResume<CR>
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> ]c <Plug>(coc-diagnostic-prev)
nmap <silent> [c <Plug>(coc-diagnostic-next)
" Remap for rename current word
nmap <leader>cn <Plug>(coc-rename)
" Remap for format selected region
vmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K for show documentation in preview window
nnoremap <silent> K :call <sid>show_documentation()<cr>
" use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gm <Plug>(coc-git-commit)
nnoremap <silent> <leader>cg  :<C-u>CocList --normal gstatus<CR>
" float window scroll
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
" multiple cursors session
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
nnoremap <silent> <leader>cm ::CocSearch -w 
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
else
    call CocAction('doHover')
endif
endfunction
" }}}

" fzf mappinps {{{

nnoremap <silent> <leader>fc :Colors<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>ff :call Fzf_dev()<CR>
nnoremap <silent> <leader>fr :Rg<CR>
nnoremap <silent> <leader>fw :Rg <C-R><C-W><CR>

" }}


" vim-easy-align {{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}


" vim-go {{
nnoremap <silent> <LocalLeader>gi :GoImpl<CR>
nnoremap <silent> <LocalLeader>gd :GoDescribe<CR>
nnoremap <silent> <LocalLeader>gc :GoCallees<CR>
nnoremap <silent> <LocalLeader>gC :GoCallers<CR>
nnoremap <silent> <LocalLeader>gs :GoCallstack<CR>
" }}

" vim-easygit {{
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gB :Gbrowse<CR>
nnoremap <silent> <Leader>gS :Gstatus<CR>
nnoremap <silent> <localleader>gp :Gpush<CR>
" }}


" mundo {{
nnoremap <silent> <leader>m :MundoToggle<CR>
" }}


" vim-choosewin {{
nmap -         <Plug>(choosewin)
nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
" }}
 

" comfortable motion
    nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
    nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
    nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
    nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

" }}


" vim-goyo {{
nnoremap <Leader>G :Goyo<CR>
" }}


" vim-startify {{
nnoremap <silent> <leader>s :Startify<CR>
" }}


" vista {{
nnoremap <silent><localleader>v :Vista!!<CR>
nnoremap <silent><leader>fv     :Vista finder coc<CR>
" }}

" tagbar {{
nnoremap <silent><localleader>t :TagbarToggle<CR>
" }}

" ale {{
nmap [a <Plug>(ale_next_wrap)
nmap ]a <Plug>(ale_previous_wrap)
" }}


" vim-operator-replace {{
xmap p <Plug>(operator-replace)
" }}

" easy motion {{
nmap <Leader><Leader>w <Plug>(easymotion-w)
nmap <Leader><Leader>f <Plug>(easymotion-f)
nmap <Leader><Leader>b <Plug>(easymotion-b)
"}}

" whichkey {{
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ';'<CR>
nnoremap <silent>[              :<c-u>WhichKey  '['<CR>
nnoremap <silent>]              :<c-u>WhichKey  ']'<CR>
" }}
