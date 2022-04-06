let g:startify_session_dir = '~/.config/nvimSessions'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ { 'x': '~/.xinitrc' },
            \ { 'w': '~/.config/bspwm/bspwmrc' },
            \ { 'e': '~/.config/bspwm/scripts/external_rules.sh' },
            \ { 's': '~/.config/sxhkd/sxhkdrc' },
            \ { 'p': '~/.config/polybar/config.ini' },
            \ { 'v': '~/.config/nvim/syntax.wiki' },
            \ ]
"let g:startify_session_autoload = 1
"let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_custom_header = [
        \ '   _  __     _         __  ___         __     ___ ',
        \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
        \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
        \]
