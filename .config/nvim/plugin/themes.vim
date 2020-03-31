" Theme stuff
" Dynamically switch color scheme and have things respect it
function SwitchColorScheme(name)
  let g:VIM_COLOR_SCHEME = a:name
  call ColorScheme()
endfunction

function! ColorScheme()
 if g:VIM_COLOR_SCHEME ==# 'palenight'
    colorscheme palenight
 endif

endfunction

" The Defaults
:call SwitchColorScheme('palenight')
