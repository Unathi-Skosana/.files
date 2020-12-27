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

" vim:set ft=vim et sw=2:
