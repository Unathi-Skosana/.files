" delimitMate
let b:delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£]\|[^[:space:][:punct:]]\)'

" LaTeX {{{
let g:tex_flavor = "latex"
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 1
let g:vimtex_compiler_latexmk = {
			\ 'options' : [
			\   '-pdf',
			\   '-shell-escape',
			\   '-verbose',
			\   '-file-line-error',
			\   '-synctex=1',
			\   '-interaction=nonstopmode',
			\ ],
			\}
let g:tex_conceal = ""
let g:vimtex_fold_enabled =1
" }}}

augroup user_plugin_filetype " {{{
	autocmd!

	autocmd BufReadPost * " {{{
			" Return to last edit position when opening files
			if line("'\"") > 0 && line("'\"") <= line("$") |
				exe "normal! g`\"" |
			endif
    "}}}

	autocmd FileType crontab " {{{
      setlocal nobackup nowritebackup
  "}}}

	autocmd FileType python " {{{
			setlocal expandtab smarttab nosmartindent
			setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80
	"}}}

	autocmd FileType tex,bib " {{{
			let b:delimitMate_quotes = "\" ' $"
	"}}}

  autocmd FileType markdown,vimwiki " {{{
		  let b:delimitMate_quotes = "\" ' $"
  "}}}

	autocmd BufNewFile,BufRead *.prisma " {{{
			setfiletype graphql
  " }}}

augroup END " }}}

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
