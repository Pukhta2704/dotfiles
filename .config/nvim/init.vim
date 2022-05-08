source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings/fzf.vim
source $HOME/.config/nvim/settings/ale.vim
source $HOME/.config/nvim/settings/sessions.vim
" source $HOME/.config/nvim/settings/airline.vim
source $HOME/.config/nvim/settings/theme.vim
source $HOME/.config/nvim/settings/general.vim
source $HOME/.config/nvim/settings/keybindings.vim
luafile $HOME/.config/nvim/treesitter.lua
source $HOME/.config/nvim/scripts.vim

let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]
function! Omni()
    luafile $HOME/.config/nvim/lspNormal.lua
endfunction

function! Lsp()
    luafile $HOME/.config/nvim/lspFull.lua
endfunction

" command to search and replace after using Rg
" cfdo %s/foo/bar/g | :w

" autocmd FileType javascriptreact setlocal commentstring={/*%s*/}

" Bulk renaming
" :read !ls
" :%s/.*/mv & &/
" :w !sh

" Bulk renaming in wikihtml
" :read !ls
" :%s/\(.*\)\(\.md.html\)/mv \0 \1/  
" :w !sh
