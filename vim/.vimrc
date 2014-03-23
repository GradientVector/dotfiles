" General settings
set number
set nocompatible

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

"gVim settings
:set guioptions -=T "remove toolbar

"Makefile settings
autocmd FileType make set noexpandtab | set list | set listchars=tab:\~\ 

"HTML settings
autocmd FileType html set tabstop=2 | set softtabstop=2 | set shiftwidth=2

"Ruby settings
autocmd FileType ruby set tabstop=2 | set softtabstop=2 | set shiftwidth=2 
autocmd FileType ruby compiler ruby

"YAML syntax coloring and functions
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
