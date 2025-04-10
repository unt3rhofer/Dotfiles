autocmd BufRead,BufNewFile /home/martin/Dotfiles/i3/* setlocal filetype=i3config
autocmd BufRead,BufNewFile /home/martin/Dotfiles/sway/* setlocal filetype=i3config

syntax on

let mapleader = ","

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4

set encoding=utf-8

call plug#begin()
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'francoiscabrol/ranger.vim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

colorscheme catppuccin-mocha 
set termguicolors
highlight LineNr guifg=#ffffff

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c", "lua", "python" }, -- Add cpp here
  highlight = {
    enable = true,                -- enable Tree-sitter highlighting
    additional_vim_regex_highlighting = false,
  },
}
EOF

lua << EOF
	require("nvim-tree").setup()
EOF

lua require("toggleterm").setup() 

nnoremap <leader>e :NvimTreeToggle<CR>

" Clear highlights after using n/N
nnoremap n n:noh<CR>
nnoremap N N:noh<CR>

" Optional: also clear highlight when leaving search prompt
autocmd CmdlineLeave /,\? :silent! noh

