" map leader to Space
let mapleader = " " 

" File Browser 
nmap f; <Cmd>NERDTreeToggle<CR>

" Refreshing File Browser
nmap !! <Cmd>NERDTreeRefreshRoot<CR>        

" Switching Between Buffers
" nmap <Tab> :bnext<Cr>
" nmap <S-Tab> :bprev<Cr>
" nmap <leader>z :b#<Cr>
nmap <Tab> :b#<Cr>

" Formatting Code
autocmd FileType php,javascript,typescript,json,css,html nmap <C-m> <Esc>:w<Cr>:!prettier % --print-width 80 --trailing-comma none --no-semi true --write<Cr><Cr>:e %<Cr>
" autocmd FileType javascript,typescript,json,css,html,python nmap <C-m> <Esc>:call CocAction('format')<Cr>
autocmd FileType python nmap <C-m> <Esc>:w<Cr>:!autopep8 --in-place -a -a -a -a --max-line-length 80 % <Cr><Cr>:e %<Cr>zz
autocmd FileType c,vim nmap <C-m> :lua vim.lsp.buf.formatting_sync()<Cr>:w<Cr>:e %<Cr>zz

" Comments
nmap <C-_> gcc
xmap <C-_> gcc<Esc>
imap <C-_> <Esc>gccA

" Files and Search and Replace
nmap <leader>f :Files<Cr>
nmap <leader>d :Buffers<Cr>
nmap <leader>s :Rg<Cr>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Quitting
nnoremap <C-O>    :Bclose<Cr>

xmap $ $h

" Bookmarks 
nmap <C-n> mn
nmap <C-p> mp
let g:bookmark_annotation_sign = '⚑'
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
autocmd FileType javascriptreact,typescriptreact,javascript,typescript,css,html imap  ;; <c-y>,

autocmd FileType c,javascriptreact,typescriptreact,javascript,typescript,css,html nmap  zz zf%
autocmd FileType python nmap  zz zf}

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
inoremap <c-space> <c-n>

map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
