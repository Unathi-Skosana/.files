" Vim wiki stuff
let code_wiki = {}
let code_wiki.path = '~/Dropbox/wiki/coding'
let code_wiki.syntax = 'markdown'
let code_wiki.ext = '.md'
let code_wiki.auto_diary_index = 1

let personal_wiki = {}
let personal_wiki.path = '~/Dropbox/wiki/personal'
let personal_wiki.syntax = 'markdown'
let personal_wiki.ext = '.md'
let personal_wiki.auto_diary_index = 1

let academics_wiki = {}
let academics_wiki.path = '~/Dropbox/wiki/academics'
let academics_wiki.syntax = 'markdown'
let academics_wiki.ext = '.md'
let academics_wiki.auto_diary_index = 1

let books_wiki = {}
let books_wiki.path = '~/Dropbox/wiki/books'
let books_wiki.syntax = 'markdown'
let books_wiki.ext = '.md'
let books_wiki.auto_diary_index = 1

let cheats_wiki = {}
let cheats_wiki.path = '~/Dropbox/wiki/cheats'
let cheats_wiki.syntax = 'markdown'
let cheats_wiki.ext = '.md'
let cheats_wiki.auto_diary_index = 1

let g:vimwiki_table_mappings=0
let g:vimwiki_list = [books_wiki,code_wiki,personal_wiki,academics_wiki,cheats_wiki]
let g:taskwiki_maplocalleader="-"
let g:taskwiki_markup_syntax = 'markdown'

" Instant Markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_browser = "firefox"
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_port = 1337
let g:instant_markdown_allow_external_content = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_python = 1
