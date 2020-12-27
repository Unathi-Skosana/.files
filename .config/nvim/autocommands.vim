" jump to the last position when reopening a file
if has("autocmd") "{{{
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" }}}

augroup user_plugin_filetype " {{{
	autocmd!
	autocmd FileType crontab
				\ setlocal nobackup nowritebackup

	autocmd BufNewFile,BufRead *.prisma
				\ setfiletype graphql
augroup END " }}}

augroup my_neomake_hooks
  au!
  autocmd User NeomakeJobFinished call MyOnNeomakeJobFinished()
  autocmd User NeomakeJobStarted call MyOnNeomakeJobStarted()
augroup END

" Disable swap/undo/viminfo/shada files in temp directories or shm
augroup user_secure
    autocmd!
    silent! autocmd BufNewFile,BufReadPre
                \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim
                \ setlocal noswapfile noundofile nobackup nowritebackup viminfo= shada=
augroup END

augroup plugin_whitespace
	" Remove end of line white space
	command! -range=% WhitespaceErase call <SID>WhitespaceErase(<line1>,<line2>)

	function! s:ToggleWhitespace(mode)
		if &buftype =~? 'nofile\|help\|quickfix' || &filetype ==? ''
			return
		elseif a:mode ==? ''
			call matchdelete(w:whitespace_match_id)
			return
		else
			let l:pattern = (a:mode ==# 'i') ? '\s\+\%#\@<!$' : '\s\+$\| \+\ze\t'
			if exists('w:whitespace_match_id')
				call matchdelete(w:whitespace_match_id)
				call matchadd('ExtraWhitespace', l:pattern, 10, w:whitespace_match_id)
			else
				highlight! link ExtraWhitespace SpellBad
				let w:whitespace_match_id = matchadd('ExtraWhitespace', l:pattern)
			endif
		endif
	endfunction

	function! s:WhitespaceErase(line1, line2)
		let l:save_cursor = getpos('.')
		silent! execute ':'.a:line1.','.a:line2.'s/\s\+$//'
		call setpos('.', l:save_cursor)
	endfunction

	autocmd!
	autocmd InsertEnter * call <SID>ToggleWhitespace('i')
	autocmd InsertLeave * call <SID>ToggleWhitespace('n')
augroup END

" vim:set ft=vim et sw=2:
