"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd FileType javascript,typescript,json,css,html,python nmap <C-m> <Esc>:call CocAction('format')<Cr>

nmap <C-_> gcc<Esc>
xmap <C-_> gcc<Esc>
imap <C-_> <Esc>gcca

" inoremap <silent><expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"highlight CocInfoFloat guifg=black guibg=white
"highlight CocErrorFloat guifg=black guibg=white
"highlight CocWarningFloat guifg=black guibg=white
"highlight CocHintFloat guifg=black guibg=white

" Coc extensions that I use
" clangd
" emmet
" eslint
" json
" prettier
" pyright
" tsserver
" vimlsp
