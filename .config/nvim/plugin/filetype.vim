
augroup user_plugin_filetype " {{{
	autocmd!

    " Return to last edit position when opening files
	autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
			\ endif

	autocmd FileType crontab setlocal nobackup nowritebackup

	autocmd FileType python
			\ setlocal expandtab smarttab nosmartindent
			\ | setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80

	autocmd FileType html setlocal path+=./;/

	autocmd FileType markdown
			\ setlocal expandtab spell conceallevel=0
			\ | setlocal autoindent formatoptions=tcroqn


  autocmd FileType javascript
			\ setlocal foldmethod=syntax

	autocmd BufNewFile,BufRead *.prisma
			\ setfiletype graphql
augroup END " }}}



" Python {{{
let g:python_highlight_all = 1
" let g:python_highlight_builtins = 1
" let g:python_highlight_exceptions = 1
" let g:python_highlight_string_format = 1
" let g:python_highlight_doctests = 1
" let g:python_highlight_class_vars = 1
" let g:python_highlight_operators = 1

" }}}


" JSX {{{
" let g:jsx_ext_required = 1
" let g:jsx_pragma_required = 1
" }}}





" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
