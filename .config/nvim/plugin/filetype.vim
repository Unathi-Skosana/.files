" LaTeX {{{
let g:tex_flavor = "latex"
let g:tex_conceal = 0
" }}

if !has('autocmd')
  finish
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd") "{{{
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"}}}


augroup user_plugin_filetype " {{{
	autocmd!
	autocmd FileType crontab " {{{
				\ setlocal nobackup nowritebackup
  "}}}

	autocmd FileType tex,bib " {{{
				\ let b:delimitMate_quotes = "\" ' $"
				\ | let b:delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£]\|[^[:space:][:punct:]]\)'
	"}}}

  autocmd FileType markdown,vimwiki,pandoc
				\ let b:delimitMate_quotes = "\" ' $"
				\ | let b:delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£]\|[^[:space:][:punct:]]\)'

	autocmd BufNewFile,BufRead *.prisma " {{{
				\ setfiletype graphql
  " }}}
	augroup END " }}}

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
