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
syntax on
filetype on
filetype indent on
filetype plugin on

"Makefile settings
autocmd FileType make set noexpandtab | set list | set listchars=tab:\~\ 

"HTML settings
autocmd FileType html set tabstop=2 | set softtabstop=2 | set shiftwidth=2

"Ruby settings
autocmd FileType ruby set tabstop=2 | set softtabstop=2 | set shiftwidth=2 
autocmd FileType ruby compiler ruby

"YAML syntax coloring and functions
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

"Arduino
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
