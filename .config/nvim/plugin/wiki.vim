let default_wiki = {}
let default_wiki.path = '~/Dropbox/wiki/'
let default_wiki.syntax = 'markdown'
let default_wiki.ext = '.md'
let default_wiki.auto_diary_index = 0

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
let g:vimwiki_list = [default_wiki,books_wiki,code_wiki,personal_wiki,academics_wiki,cheats_wiki]
let g:taskwiki_maplocalleader="-"
let g:taskwiki_markup_syntax = 'markdown'
