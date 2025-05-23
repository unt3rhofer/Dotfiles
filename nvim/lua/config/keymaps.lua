-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Clear search highlights after using n/N
map("n", "n", "n:noh<CR>", opts)
map("n", "N", "N:noh<CR>", opts)

-- Clear highlights when leaving search prompt
vim.api.nvim_create_autocmd("CmdlineLeave", {
  pattern = { "/", "?" },
  command = "silent! noh",
})

-- Terminal: Esc to normal mode
map("t", "<leader><Esc>", "<C-\\><C-n>", opts)

-- Window navigation with Alt+hjkl
map("n", "<A-h>", "<C-w>h", opts)
map("n", "<A-j>", "<C-w>j", opts)
map("n", "<A-k>", "<C-w>k", opts)
map("n", "<A-l>", "<C-w>l", opts)

-- Window moving with Alt+Shift+HJKL
map("n", "<A-H>", "<C-w>H", opts)
map("n", "<A-J>", "<C-w>J", opts)
map("n", "<A-K>", "<C-w>K", opts)
map("n", "<A-L>", "<C-w>L", opts)

