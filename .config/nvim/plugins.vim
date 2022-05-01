call plug#begin()
" Auto Compeletion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}         
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" File Browser
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
" Status Line
" Plug 'vim-airline/vim-airline'                          " Airline
" Plug 'vim-airline/vim-airline-themes'
" syntax 
Plug 'jiangmiao/auto-pairs'                             " Brackets pairs
" Plug 'sheerun/vim-polyglot'                             " Syntax highlighting
Plug 'lilydjwg/colorizer'                               " Colors hex
" Files and Search and Replace
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Files and text finder
Plug 'junegunn/fzf.vim'
" Session
Plug 'mhinz/vim-startify'
" Theme
Plug 'morhetz/gruvbox'
" Icons
Plug 'ryanoasis/vim-devicons'
" Comments and Surround
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mattn/emmet-vim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
" Plug 'jose-elias-alvarez/buftabline.nvim',
" Plug 'vim-scripts/AutoComplPop'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'lukas-reineke/cmp-rg'
Plug 'uga-rosa/cmp-dictionary' 
call plug#end()

