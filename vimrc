autocmd BufRead,BufNewFile /home/martin/Dotfiles/i3/* setlocal filetype=i3config
autocmd BufRead,BufNewFile /home/martin/Dotfiles/sway/* setlocal filetype=i3config

syntax on

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4

set encoding=utf-8

call plug#begin()
	Plug 'catppuccin/vim', { 'as': 'catppuccin' }
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'francoiscabrol/ranger.vim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

colorscheme catppuccin_mocha 
set termguicolors
highlight LineNr guifg=#ffffff
