let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
let g:livepreview_previewer = 'firefox'
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
