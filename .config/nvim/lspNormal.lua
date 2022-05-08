-- lspconfig
local nvim_lsp = require('lspconfig')

-- nvim-cmp
local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local dictionary=require("cmp_dictionary")

-- better autocompletion experience
vim.o.completeopt = 'menuone,noselect'

cmp.setup {
	-- Format the autocomplete menu
	formatting = {
		format = lspkind.cmp_format()
	},
	mapping = {
        ['<c-space>'] = cmp.mapping.complete({
            config = {
             sources = {
               { name = 'nvim_lsp' }
             }
            }
           }),
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
        end,
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'rg' },
        { 
          name = "dictionary",
          keyword_length = 2,
        },
        { name = 'fuzzy_path' },
}
}
function dict()
    require("cmp_dictionary").setup({
        dic = {
            -- ["*"] = { "$HOME/.config/nvim/dict/python.dic" },
            ["python"] = "$HOME/.config/nvim/dict/.python",
            -- ["javascript,typescript"] = { "$HOME/.config/nvim/dict/python.dic" },
            -- filename = {
                -- ["xmake.lua"] = { "$HOME/.config/nvim/dic/python.dic" },
            -- },
            -- filepath = {
            --     ["%.tmux.*%.conf"] = "$HOME/.config/nvim/dict/python.dic"
            -- },
            
        },
        -- The following are default values, so you don't need to write them if you don't want to change them
    })
end

