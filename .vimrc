" Set Working Directory (uncomment for Windows)
" cd C:/users/john.harvey/

" General settings
set number
set nocompatible
set backspace=indent,eol,start
set hidden

" Mouse settings
set mouse=a "Enable the mouse for all modes
set ttymouse=xterm2 " Set this to the name of your terminal that supports mouse codes.
                    " Must be one of: 
                    " xterm, xterm2, netterm, dec, jsbterm, pterm
set ttyfast "Send more characters for redraws


" Search settings
set incsearch
set hlsearch
set showmatch
set ignorecase

" Tabs settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" Autocomplete settings
set infercase
set spell

" Shortcuts
inoremap <C-e> <C-x><C-e>
inoremap <C-y> <C-x><C-y>

" Syntax Highlighting
set background=dark
filetype on
filetype plugin on
filetype indent on
syntax on

"Enhance '%' command
runtime macros/matchit.vim

"Handle error messages from Unity test framework for C
set errorformat^=%*[%.]%f:%l:%m

