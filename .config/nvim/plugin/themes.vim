" Theme stuff
" Dynamically switch color scheme and have things respect it
function SwitchColorScheme(name)
  let g:VIM_COLOR_SCHEME = a:name
  call ColorScheme()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function! ColorScheme()
  if g:VIM_COLOR_SCHEME ==# 'challenger_deep'
    colorscheme challenger_deep
    let g:lightline.colorscheme = 'challenger_deep'
    highlight clear ALEErrorSign
    highlight ALEWarningSign guifg=yellow
    highlight ALEVirtualTextWarning guifg=yellow
    hi Search guibg=#ffb378 guifg=#100e23 
    hi PMenu guibg=#100e23 guifg=#a6b3cc
    hi PmenuSel guibg=#1E1C30 guifg=#63f2f1
    hi CtrlPMatch guibg=#ffe9aa guifg=black
    hi CtrlPMode1 guibg=#aaffe4 guifg=black
    hi LineNr guibg=#1e1c31
    " Fix challengers horrible git diffs
    hi DiffAdd guibg=#62d196 guifg=black
    hi DiffDelete guibg=#ff5458 guifg=black
    hi DiffChange guibg=#ffb378 guifg=black
    hi DiffText guibg=#ffe9aa guifg=black
  endif

  if g:VIM_COLOR_SCHEME ==# 'dracula'
    packadd! dracula
    set background=dark
    colorscheme dracula
    let g:lightline.colorscheme = 'dracula'
  endif

 if g:VIM_COLOR_SCHEME ==# 'ayu'
    packadd ayu-vim
    let ayucolor='dark'
    colorscheme ayu
    let g:lightline.colorscheme = 'ayu'
  endif

 if g:VIM_COLOR_SCHEME ==# 'onedark'
    packadd onedark
    colorscheme onedark
    let g:lightline.colorscheme = 'onedark'
  endif
endfunction

" The Defaults
:call SwitchColorScheme('challenger_deep')
