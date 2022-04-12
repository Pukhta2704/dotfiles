source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings/fzf.vim
source $HOME/.config/nvim/settings/ale.vim
source $HOME/.config/nvim/settings/sessions.vim
source $HOME/.config/nvim/settings/airline.vim
source $HOME/.config/nvim/settings/theme.vim
source $HOME/.config/nvim/settings/general.vim
source $HOME/.config/nvim/settings/keybindings.vim
luafile $HOME/.config/nvim/lsp.lua
luafile $HOME/.config/nvim/treesitter.lua


" autocomplete servers
" sudo npm i -g typescript typescript-language-server pyright vim-language-server vscode-langservers-extracted prettier live-server 
" sudo pacman -S clang
" command to search and replace after using Rg
" cfdo %s/foo/bar/g | :w
