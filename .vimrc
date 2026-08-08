" disable compatibility mode
set nocompatible

set nomodeline

" tries to detect file and load plugins/indent for detected file type
filetype on
filetype plugin on
filetype indent on

" turn syntax highlighting on
syntax on

" sets encoding for YCM
set encoding=utf-8

" loads plugins
call plug#begin()

Plug 'catppuccin/vim', { 'as': 'catppuccin' } " catppuccin color scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc autocomplete

call plug#end()

" coc config
inoremap <silent><expr> <TAB>
 	\ coc#pum#visible() ? coc#pum#next(1) : 
 	\ CheckBackspace() ? "\<Tab>" : 
 	\ coc#Refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" show relative line nums + current line num
set number
set relativenumber

" status bar
set laststatus=2

" tab settings (tabs are 4 chars + not spaces)
set tabstop=4
set softtabstop=0
set shiftwidth=4
set noexpandtab

" highlight matches while searching
set hlsearch
set incsearch

" puts backups and swap files into their own directory
set backup
set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

" slight highlight on current line
set cursorline

" sets colorscheme of vim to catppuccin
set termguicolors
colorscheme catppuccin_frappe
set background=dark
" makes background transparent
hi Normal guibg=NONE ctermbg=NONE
