" Vim wiki stuff
let code_wiki = {}
let code_wiki.path = '~/Dropbox/wiki/coding/'
let code_wiki.syntax = 'markdown'
let code_wiki.ext = '.md'
let code_wiki.auto_diary_index = 1
let code_wiki.nested_syntaxes = {'js': 'javascript', 'javascript': 'javascript', 'golang': 'golang', 'c': 'c', 'py': 'python', 'python': 'python'}

let personal_wiki = {}
let personal_wiki.path = '~/Dropbox/wiki/personal_wiki/'
let personal_wiki.syntax = 'markdown'
let personal_wiki.ext = '.md'
let personal_wiki.auto_diary_index = 1

let academics_wiki = {}
let academics_wiki.path = '~/Dropbox/wiki/academics/'
let academics_wiki.syntax = 'markdown'
let academics_wiki.ext = '.md'
let academics_wiki.auto_diary_index = 1

let g:vimwiki_list = [code_wiki, personal_wiki, academics_wiki]
let g:taskwiki_maplocalleader="-"
let g:taskwiki_markup_syntax = 'markdown'

" Livedown is a markdown server
let g:livedown_autorun = 0
" Open the browser window upon previewing
let g:livedown_open = 1
let g:livedown_port = 1337

