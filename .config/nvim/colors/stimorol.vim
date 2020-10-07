" stimorol.vim -- Vim color scheme.
" Author:      DeLicht (ukskosana@gmail.com)
" Webpage:     http://www.example.com
" Description: Lorem ipsum dolor sit amet.
" Last Change: 2020-09-21

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "stimorol"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi NonText ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Comment ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Constant ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Error ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Identifier ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Ignore ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi PreProc ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Special ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Statement ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi String ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Todo ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Type ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Underlined ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi StatusLine ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi VertSplit ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi TabLine ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi TabLineFill ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi TabLineSel ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Title ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi CursorLine ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi LineNr ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi CursorLineNr ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi helpLeadBlank ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi helpNormal ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Visual ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi VisualNOS ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Pmenu ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi PmenuSbar ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi PmenuSel ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi PmenuThumb ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi FoldColumn ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Folded ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi WildMenu ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi SpecialKey ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi DiffAdd ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi DiffChange ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi DiffDelete ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi DiffText ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi IncSearch ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Search ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Directory ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi MatchParen ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi SpellBad ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE guisp=#D551A0
    hi SpellCap ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE guisp=#5C82FF
    hi SpellLocal ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE guisp=#7566FF
    hi SpellRare ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE guisp=#65C7DE
    hi ColorColumn ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi SignColumn ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi ErrorMsg ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi ModeMsg ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi MoreMsg ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Question ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Cursor ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi CursorColumn ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi QuickFixLine ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi Conceal ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi ToolbarLine ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi ToolbarButton ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi debugPC ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE
    hi debugBreakpoint ctermbg=0 ctermfg=7 cterm=NONE guibg=#24292e guifg=#A9B1D6 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=black ctermfg=gray cterm=NONE
    hi NonText ctermbg=black ctermfg=gray cterm=NONE
    hi Comment ctermbg=black ctermfg=gray cterm=NONE
    hi Constant ctermbg=black ctermfg=gray cterm=NONE
    hi Error ctermbg=black ctermfg=gray cterm=NONE
    hi Identifier ctermbg=black ctermfg=gray cterm=NONE
    hi Ignore ctermbg=black ctermfg=gray cterm=NONE
    hi PreProc ctermbg=black ctermfg=gray cterm=NONE
    hi Special ctermbg=black ctermfg=gray cterm=NONE
    hi Statement ctermbg=black ctermfg=gray cterm=NONE
    hi String ctermbg=black ctermfg=gray cterm=NONE
    hi Todo ctermbg=black ctermfg=gray cterm=NONE
    hi Type ctermbg=black ctermfg=gray cterm=NONE
    hi Underlined ctermbg=black ctermfg=gray cterm=NONE
    hi StatusLine ctermbg=black ctermfg=gray cterm=NONE
    hi StatusLineNC ctermbg=black ctermfg=gray cterm=NONE
    hi VertSplit ctermbg=black ctermfg=gray cterm=NONE
    hi TabLine ctermbg=black ctermfg=gray cterm=NONE
    hi TabLineFill ctermbg=black ctermfg=gray cterm=NONE
    hi TabLineSel ctermbg=black ctermfg=gray cterm=NONE
    hi Title ctermbg=black ctermfg=gray cterm=NONE
    hi CursorLine ctermbg=black ctermfg=gray cterm=NONE
    hi LineNr ctermbg=black ctermfg=gray cterm=NONE
    hi CursorLineNr ctermbg=black ctermfg=gray cterm=NONE
    hi helpLeadBlank ctermbg=black ctermfg=gray cterm=NONE
    hi helpNormal ctermbg=black ctermfg=gray cterm=NONE
    hi Visual ctermbg=black ctermfg=gray cterm=NONE
    hi VisualNOS ctermbg=black ctermfg=gray cterm=NONE
    hi Pmenu ctermbg=black ctermfg=gray cterm=NONE
    hi PmenuSbar ctermbg=black ctermfg=gray cterm=NONE
    hi PmenuSel ctermbg=black ctermfg=gray cterm=NONE
    hi PmenuThumb ctermbg=black ctermfg=gray cterm=NONE
    hi FoldColumn ctermbg=black ctermfg=gray cterm=NONE
    hi Folded ctermbg=black ctermfg=gray cterm=NONE
    hi WildMenu ctermbg=black ctermfg=gray cterm=NONE
    hi SpecialKey ctermbg=black ctermfg=gray cterm=NONE
    hi DiffAdd ctermbg=black ctermfg=gray cterm=NONE
    hi DiffChange ctermbg=black ctermfg=gray cterm=NONE
    hi DiffDelete ctermbg=black ctermfg=gray cterm=NONE
    hi DiffText ctermbg=black ctermfg=gray cterm=NONE
    hi IncSearch ctermbg=black ctermfg=gray cterm=NONE
    hi Search ctermbg=black ctermfg=gray cterm=NONE
    hi Directory ctermbg=black ctermfg=gray cterm=NONE
    hi MatchParen ctermbg=black ctermfg=gray cterm=NONE
    hi SpellBad ctermbg=black ctermfg=gray cterm=NONE
    hi SpellCap ctermbg=black ctermfg=gray cterm=NONE
    hi SpellLocal ctermbg=black ctermfg=gray cterm=NONE
    hi SpellRare ctermbg=black ctermfg=gray cterm=NONE
    hi ColorColumn ctermbg=black ctermfg=gray cterm=NONE
    hi SignColumn ctermbg=black ctermfg=gray cterm=NONE
    hi ErrorMsg ctermbg=black ctermfg=gray cterm=NONE
    hi ModeMsg ctermbg=black ctermfg=gray cterm=NONE
    hi MoreMsg ctermbg=black ctermfg=gray cterm=NONE
    hi Question ctermbg=black ctermfg=gray cterm=NONE
    hi Cursor ctermbg=black ctermfg=gray cterm=NONE
    hi CursorColumn ctermbg=black ctermfg=gray cterm=NONE
    hi QuickFixLine ctermbg=black ctermfg=gray cterm=NONE
    hi Conceal ctermbg=black ctermfg=gray cterm=NONE
    hi ToolbarLine ctermbg=black ctermfg=gray cterm=NONE
    hi ToolbarButton ctermbg=black ctermfg=gray cterm=NONE
    hi debugPC ctermbg=black ctermfg=gray cterm=NONE
    hi debugBreakpoint ctermbg=black ctermfg=gray cterm=NONE
endif

hi link EndOfBuffer NonText
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link Terminal Normal

let g:terminal_ansi_colors = [
        \ '#24292e',
        \ '#EA7794',
        \ '#10D7AE',
        \ '#EC915C',
        \ '#005CC5',
        \ '#4653B8',
        \ '#09D1D6',
        \ '#A9B1D6',
        \ '#778CA3',
        \ '#D551A0',
        \ '#4FEBA5',
        \ '#FFC867',
        \ '#5C82FF',
        \ '#7566FF',
        \ '#65C7DE',
        \ '#EFEFEF',
        \ ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
