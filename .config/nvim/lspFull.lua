local nvim_lsp = require('lspconfig')
local lsp_installer = require("nvim-lsp-installer")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local function on_attach(client, bufnr)
    local opts = { noremap=true, silent=true }
  -- Set up buffer-local keymaps (vim.api.nvim_buf_set_keymap()), etc.
    vim.api.nvim_set_keymap('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>',opts) 
    vim.api.nvim_set_keymap('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>',opts) 
    vim.api.nvim_set_keymap('n','<leader>y','<cmd>lua vim.lsp.buf.hover()<CR>',opts) 
    vim.api.nvim_set_keymap('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>',opts) 
    vim.api.nvim_set_keymap('n','<leader>t','<cmd>lua vim.lsp.buf.signature_help()<CR>',opts) 
    vim.api.nvim_set_keymap('n','<space>wa','<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>',opts) 
    vim.api.nvim_set_keymap('n','<space>wr','<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>',opts)  
    vim.api.nvim_set_keymap('n','<space>wl','<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',opts)  
    vim.api.nvim_set_keymap('n','<space>D','<cmd>lua vim.lsp.buf.type_definition()<CR>',opts)  
    vim.api.nvim_set_keymap('n','<space>rn','<cmd>lua vim.lsp.buf.rename()<CR>',opts)  
    vim.api.nvim_set_keymap('n','<space>ca','<cmd>lua vim.lsp.buf.code_action()<CR>',opts)  
    vim.api.nvim_set_keymap('n','gr','<cmd>lua vim.lsp.buf.references()<CR>',opts) 
    vim.api.nvim_set_keymap('n','<space>e','<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',opts)  
    vim.api.nvim_set_keymap('n','[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',opts) 
    vim.api.nvim_set_keymap('n',']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',opts) 
    vim.api.nvim_set_keymap('n','<space>q','<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',opts)  
end
lsp_installer.on_server_ready(function(server)
  local opts = { 
-- ...
    capabilities=capabilities,
    on_attach=on_attach
-- ...
  }
-- ...
  server:setup(opts)
end)


