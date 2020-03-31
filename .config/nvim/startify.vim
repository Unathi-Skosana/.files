let g:startify_bookmarks=['~/.config/kitty/kitty.conf', '~/.config/nvim/init.vim', '~/Repositories/', '~/Dropbox/']
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Recent Files']   },
          \ { 'type': 'dir',       'header': ['   Recent Files in: '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
let g:startify_custom_header = systemlist('fortune -s | cowsay -f (cowsay -l | tail -n +2  | tr " " "\n" | shuf -n 1) | lolcat')
