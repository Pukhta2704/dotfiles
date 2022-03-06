call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'jparise/vim-graphql'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'luochen1990/rainbow'
call plug#end()
if has("gui_running")
set guioptions=aiA " Disable toolbar, menu bar, scroll bars
set showmatch matchtime=3
endif " has("gui_running")
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"set mouse=a
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let NERDTreeQuitOnOpen=1
set t_Co=256
syntax on
set number 
set relativenumber
set cursorline
set hlsearch
hi Search ctermbg=White
hi Search ctermfg=Red
set updatetime=10
nnoremap <CR> :noh<CR><CR>
autocmd FileType javascript,css,typescript,jsx,tsx  imap <buffer> ;; <ESC> :CocCommand prettier.formatFile<CR>a
autocmd FileType javascript,css,typescript,jsx,tsx nmap <buffer> ;; :CocCommand prettier.formatFile<CR>
map f; :call NERDTreeToggleAndRefresh()<CR>
autocmd FileType c,cpp imap <buffer> ;; <ESC> :Autoformat<CR>i
autocmd FileType c,cpp nmap <buffer> ;; :Autoformat<CR>
function NERDTreeToggleAndRefresh()
 :NERDTreeToggle
 if g:NERDTree.IsOpen()
  :NERDTreeRefreshRoot
endif
endfunction
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
"Set the brackets that jump out of auto-completion
func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
        return "\<ESC>la"  
    else  
        return "\t"  
    endif  
endfunc  
 "Bind the tab key to escape brackets  
inoremap <s> <c-r>=SkipPair()<CR>
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
let g:ale_fixers={
  \'javascript': ['prettier'],
  \'json': ['prettier'],
  \'php': ['prettier'],
\}

" Prettier for PHP
function! PrettierPhpCursor1()
  let save_pos = getpos(".")
  %! prettier --stdin --parser=php
  call setpos('.', save_pos)
  normal ggdd
endfunction
" define custom command
command! PrettierPhp1 call PrettierPhpCursor1()
" format on save
autocmd BufwritePre *.php PrettierPhp1
set so=999
