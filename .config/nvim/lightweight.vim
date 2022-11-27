" light weight
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}         
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'                             " Brackets pairs
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Files and text finder
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
call plug#end()
let mapleader = " " 
nmap <leader>f :Files<Cr>
nmap <leader>d :Buffers<Cr>
nmap <leader>s :Rg<Cr>
nmap f; <Cmd>NERDTreeToggle<CR>
nmap !! <Cmd>NERDTreeRefreshRoot<CR>        
nmap <Tab> :b#<Cr>
nmap <C-_> gcc
xmap <C-_> gcc<Esc>
imap <C-_> <Esc>gccA
autocmd FileType javascriptreact,typescriptreact,javascript,typescript,css,html imap  ;; <c-y>,
autocmd FileType c,javascriptreact,typescriptreact,javascript,typescript,css,html nmap  zz $zf%
autocmd FileType python nmap  zfd zf}
nmap <leader>rr :NERDTreeFind<cr>
hi Pmenu ctermbg=black ctermfg=white 
hi PmenuSel ctermfg=black ctermfg=black
highlight LineNr ctermfg=white 
highlight BookmarkAnnotationSign ctermfg=red
highlight SignColumn ctermbg=235
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

autocmd BufWritePost * silent! mkview
autocmd BufWinEnter * silent! loadview
autocmd BufWinLeave * silent! mkview
autocmd CursorMoved,CursorMovedI * call CentreCursor()
function! CentreCursor()
    let pos = getpos(".")
    normal! zz
    call setpos(".", pos)
endfunction
function! GetBranch()
    let gitBranch=system("git rev-parse --abbrev-ref HEAD")
    if stridx(gitBranch,"fatal")
       execute " set statusline ="
       execute " set statusline =%F-(" . gitBranch
       execute " set statusline +=)"
   else
       execute " set statusline =%F"
    endif
endfunction
autocmd BufWinEnter * silent! call GetBranch()
set foldmethod=manual
autocmd FileType php,javascript,javascriptreact,typescript,json,css,html nnoremap <leader>e <Esc>:w<Cr>:!prettier % --print-width 120 --trailing-comma none --no-semi true --write<Cr><Cr>:e %<Cr>
" autocmd FileType javascript,typescript,json,css,html,python nmap <leader>e <Esc>:call CocAction('format')<Cr>
autocmd FileType python nmap <leader>e <Esc>:w<Cr>:!autopep8 --in-place -a -a -a -a --max-line-length 80 % <Cr><Cr>:e %<Cr>zz
autocmd FileType c,vim nmap <leader>e :lua vim.lsp.buf.formatting_sync()<Cr>:w<Cr>:e %<Cr>zz

colorscheme gruvbox

" Switch to your current theme
" let g:airline_theme = 'deus'
" let g:airline_theme = 'gruvbox'

hi Pmenu ctermbg=black ctermfg=white 
hi PmenuSel ctermfg=black ctermfg=black
highlight LineNr ctermfg=white 
" This line is for changing scheme to terminal background
" highlight Normal ctermbg=323230
" highlight Normal ctermbg=282828
" highlight LineNr ctermfg=white ctermbg=black   

" highlight BookmarkSign ctermbg=white ctermfg=white
highlight BookmarkAnnotationSign ctermfg=red
" highlight BookmarkLine ctermbg=white ctermfg=white
" highlight BookmarkAnnotationLine ctermbg=white ctermfg=white
highlight SignColumn ctermbg=235
" set termguicolors

" current colorscheme
" Normal xxx ctermfg=223 ctermbg=235 guifg=#ebdbb2 guibg=#282828

" Better window navigation
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <C-j>    :resize -2<CR>
nnoremap <C-k>    :resize +2<CR>
nnoremap <C-h>    :vertical resize -2<CR>
nnoremap <C-l>    :vertical resize +2<CR>

" Quitting
nnoremap <C-O>    :Bclose<Cr>

xmap $ $h
let g:fzf_layout = {'up':'~0%', 'window': { 'width': 1.0, 'height': 0.4,'yoffset':0.999,'xoffset': 1.0, 'highlight': 'Todo', 'border': 'sharp' } }

set nu                                  " Display numbers
syntax enable                           " Enables syntax highlighing
set clipboard=unnamedplus               " Copy paste between vim and everything else
" set scrolloff=15                        " Cursor in center
set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                            " Display long lines as just one line
set noswapfile                          " No swap file
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set updatetime=300                      " Faster completion
set timeoutlen=5999                     " By default timeoutlen is 1000 ms
set guicursor=i:block                   " Block cursor 
set guicursor+=a:blinkon0               " Disable all blinking:
set relativenumber                      " Show relative numbers instead of actual
" let s:hidden_all = 1
" set noshowmode
" set noruler
set laststatus=2
" set noshowcmd

" Change color on search
" hi Search ctermfg=red ctermbg=black 
" highlight Search guibg=guibg guifg=guifg gui=italic,underline,bold
