" semicolons & colons
nnoremap ; :
nnoremap : ;

" Paste last time yanked, not deleted with any of d,x,c,s.
nnoremap <leader>p "0p
nnoremap <leader>P "0P

" reload, save and quit shortcuts
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" fix spelling errors
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Splits
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><

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

if dein#tap('vim-dispatch') " {{{
  nnoremap <silent><localleader>m :Make <CR>
endif
" }}}

if dein#tap('coc.nvim') " {{{
	function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	if has('nvim')
		inoremap <silent><expr> <c-space> coc#refresh()
	else
		inoremap <silent><expr> <c-@> coc#refresh()
	endif

	" Make <CR> auto-select the first completion item and notify coc.nvim to
	" format on enter, <cr> could be remapped by other vim plugin
	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window.
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		elseif (coc#rpc#ready())
			call CocActionAsync('doHover')
		else
			execute '!' . &keywordprg . " " . expand('<cword>')
		endif
	endfunction

	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)

	" Formatting selected code.
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	" Applying codeAction to the selected region.
	" Example: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap keys for applying codeAction to the current buffer.
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Apply AutoFix to problem on the current line.
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Map function and class text objects
	" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
	xmap if <Plug>(coc-funcobj-i)
	omap if <Plug>(coc-funcobj-i)
	xmap af <Plug>(coc-funcobj-a)
	omap af <Plug>(coc-funcobj-a)
	xmap ic <Plug>(coc-classobj-i)
	omap ic <Plug>(coc-classobj-i)
	xmap ac <Plug>(coc-classobj-a)
	omap ac <Plug>(coc-classobj-a)

	" Remap <C-f> and <C-b> for scroll float windows/popups.
	if has('nvim-0.4.0') || has('patch-8.2.0750')
		nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
		nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
		inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
		inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
		vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
		vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	endif

	" Use CTRL-S for selections ranges.
	" Requires 'textDocument/selectionRange' support of language server.
	nmap <silent> <C-s> <Plug>(coc-range-select)
	xmap <silent> <C-s> <Plug>(coc-range-select)

	" Add `:Format` command to format current buffer.
	command! -nargs=0 Format :call CocAction('format')

	" Add `:Fold` command to fold current buffer.
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" Add `:OR` command for organize imports of the current buffer.
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" Mappings for CoCList
	" Show all diagnostics.
	nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions.
	nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
	" Show commands.
	nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document.
	nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols.
	nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list.
	nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
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

if dein#tap('vim-startify') " {{{
    noremap <silent> <leader>s :Startify<CR>
endif
" }}}

if dein#tap('vista.vim') " {{{
    nnoremap <silent><localleader>t :Vista!!<CR>
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
    nnoremap <silent> <leader>dp :diffput 1 \| diffupdate<CR>
    nnoremap <silent> <leader>dl :diffget //2 \| diffupdate<CR>
    nnoremap <silent> <leader>dr :diffget //3 \| diffupdate<CR>
    nnoremap <silent> <leader>du :diffupdate<CR>
    set diffopt+=vertical
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
"
if dein#tap('fzf.vim') " {{{
  nnoremap <silent> <C-p> :Files<CR>
  nnoremap <silent> <leader>b :Buffers<CR>
  nnoremap <silent> <leader>l :Lines<CR>
  nnoremap <silent> <leader>t :BTags<CR>
  nnoremap <silent> <leader>n :Notes<CR>
  nnoremap <silent> <leader>y :History:<CR>
  nnoremap <silent> <leader>fc :Colors<CR>
  nnoremap <silent> <leader>fr :Rg<CR>
endif
" }}}

if dein#tap('nvim-miniyank') " {{{
  map p <Plug>(miniyank-autoput)
  map P <Plug>(miniyank-autoPut)
endif
" }}}

" vim:set ft=vim et sw=2:
