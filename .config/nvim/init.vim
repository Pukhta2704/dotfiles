source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings/fzf.vim
source $HOME/.config/nvim/settings/ale.vim
source $HOME/.config/nvim/settings/sessions.vim
" source $HOME/.config/nvim/settings/airline.vim
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

" echo stridx(a, b)
" echos 3
nmap gD <cmd>lua vim.lsp.buf.declaration()<CR>
nmap gd <cmd>lua vim.lsp.buf.definition()<CR>
nmap <leader>y <cmd>lua vim.lsp.buf.hover()<CR>
nmap gi <cmd>lua vim.lsp.buf.implementation()<CR>
nmap <leader>t <cmd>lua vim.lsp.buf.signature_help()<CR>
nmap <space>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nmap <space>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nmap <space>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nmap <space>D <cmd>lua vim.lsp.buf.type_definition()<CR>
nmap <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nmap <space>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nmap gr <cmd>lua vim.lsp.buf.references()<CR>
nmap <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nmap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nmap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nmap <space>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
