" base  {{{
let mapleader=" "
let maplocalleader="-"


nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap ; :
nnoremap : ;

" fix spelling errors
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" More quickly call external programs
nnoremap <leader>> :!<space>

" pop up menu
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"

"buffers
nnoremap  ]b :bp<CR>
nnoremap  [b :bn<CR>
nnoremap <C-x>  :bd<CR>

"smart move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"yank to end
nnoremap Y y$

" Remove spaces at the end of lines
nnoremap <silent> ,<Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

" a command which  edit PLugin config easy
nnoremap <leader>p :EditPluginSetting <Space>

" Improve scroll, credits: https://github.com/Shougo
nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
	\ 'zt' : (winline() == 1) ? 'zb' : 'zz'
noremap <expr> <C-f> max([winheight(0) - 2, 1])
	\ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
	\ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")
noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")
" }}}

" folding {{{
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
"}}}

if dein#tap('coc.nvim') " Coc {{{
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

    " language server 
    nmap <leader>ld <Plug>(coc-definition)
    nmap <leader>la <Plug>(coc-references)
    nmap <leader>lr <Plug>(coc-rename)
    noremap <leader>lh :call CocAction('doHover')<CR>
    noremap <leader>lo :CocList outline<CR>
    noremap <leader>lp :CocList diagnostics<CR>
endif
" }}}

" Quickfix  {{{
nnoremap <silent> <UP> :cope<CR>
nnoremap <silent> <DOWN> :cclose<CR>
nnoremap <silent> <leader>cn :cnext<CR>
nnoremap <silent> <leader>cp :cprev<CR>
nnoremap <silent> <RIGHT> :cnext<CR>
nnoremap <silent> <LEFT> :cprev<CR>
"}}}

" Make many of the jump commands also center on search term {{{
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap * *zz
nnoremap # #zz
nnoremap <leader>, :nohlsearch<CR>
nnoremap <leader>/ :silent grep<space>
nnoremap <leader>co :cw<CR>
nnoremap <leader>cc :ccl<CR>

" set ag as the grep program
if executable('rg') 
  set grepprg=rg\ --vimgrep
endif
" }}}

if dein#tap('chadtree') " {{{
	nnoremap <leader>v <cmd>CHADopen<cr>
	nnoremap <leader>l <cmd>call setqflist([])<cr>
endif
"}}}

if dein#tap('fzf.vim') " {{{
    noremap  <silent> <C-p> :FZF<CR>
    nnoremap <silent> <leader>ff :Files<CR>
    nnoremap <silent> <leader>fc :Colors<CR>
    nnoremap <silent> <leader>fb :Buffers<CR>
    nnoremap <silent> <leader>fr :Rg<CR>
endif
" }}}

if dein#tap('vim-go') " {{{
	autocmd FileType go
		\   nmap <C-]> <Plug>(go-def)
		\ | nmap <Leader>god  <Plug>(go-describe)
		\ | nmap <Leader>goc  <Plug>(go-callees)
		\ | nmap <Leader>goC  <Plug>(go-callers)
		\ | nmap <Leader>goi  <Plug>(go-info)
		\ | nmap <Leader>gom  <Plug>(go-implements)
		\ | nmap <Leader>gos  <Plug>(go-callstack)
		\ | nmap <Leader>goe  <Plug>(go-referrers)
		\ | nmap <Leader>gor  <Plug>(go-run)
		\ | nmap <Leader>gov  <Plug>(go-vet)
endif
" }}}

if dein#tap('vim-mundo') " {{{
    nnoremap <silent> <leader>m :MundoToggle<CR>
endif
" }}}

if dein#tap('comfortable-motion.vim') " {{{
    nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
    nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
    nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>
    nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>
endif
" }}}

if dein#tap('goyo.vim') " {{{
    nnoremap <Leader>G :Goyo<CR>
endif
" }}}

if dein#tap('vim-startify') " {{{
    noremap <silent> <leader>s :Startify<CR>
endif
" }}}

if dein#tap('tagbar') " {{{
    nnoremap <silent><localleader>t :TagbarToggle<CR>
endif
" }}}

if dein#tap('vim-operator-replace') " {{{
    xmap p <Plug>(operator-replace)
endif
" }}}

if dein#tap('vim-fugitive') " {{{
	nnoremap <silent> <leader>ga :Git add %:p<CR>
	nnoremap <silent> <leader>gd :Gdiffsplit<CR>
	nnoremap <silent> <leader>gc :Git commit<CR>
	nnoremap <silent> <leader>gb :Git blame<CR>
	nnoremap <silent> <leader>gF :Gfetch<CR>
	nnoremap <silent> <leader>gS :Git<CR>
	nnoremap <silent> <leader>gp :Gpush<CR>
endif
" }}}

if dein#tap('vim-test') " {{{
    nnoremap <silent> <leader>tt :TestFile<CR>
    nnoremap <silent> <leader>tn :TestNearest<CR>
    nnoremap <silent> <leader>t. :TestLast<CR>
    nnoremap <silent> <leader>tv :TestVisit<CR>
endif
" }}}

if dein#tap('vim-easy-align') " {{{
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)
endif
" }}}

" vim: set fold method=marker ts=2 SW=2 two=80 nut :
