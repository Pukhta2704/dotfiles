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

function! Omni()
    source $HOME/.config/nvim/lightweightComp.vim
    call plug#begin()
    Plug 'vim-scripts/AutoComplPop'
    call plug#end()
endfunction

function! Lsp()
    luafile $HOME/.config/nvim/lsp.lua
    source $HOME/.config/nvim/lspkeybindings.vim
endfunction

" command to search and replace after using Rg
" cfdo %s/foo/bar/g | :w

