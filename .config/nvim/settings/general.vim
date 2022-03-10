set nu                                  " Display numbers
syntax enable                           " Enables syntax highlighing
set clipboard=unnamedplus               " Copy paste between vim and everything else
set scrolloff=15                        " Cursor in center
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
set showtabline=4                       " Always show tabs
set updatetime=300                      " Faster completion
set timeoutlen=5999                     " By default timeoutlen is 1000 ms
set guicursor=i:block                   " Block cursor 
set guicursor+=a:blinkon0               " Disable all blinking:
set relativenumber                      " Show relative numbers instead of actual
" Change color on search
" hi Search ctermfg=red ctermbg=black 
" highlight Search guibg=guibg guifg=guifg gui=italic,underline,bold
set foldmethod=manual
