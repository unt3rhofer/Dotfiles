-- ~/.config/nvim/lua/plugins/toggleterm.lua

return {
  "akinsho/toggleterm.nvim",
  version = "*", -- or specific tag: "v2.*"
  config = function()
    require("toggleterm").setup({
      size = 70,
      open_mapping = [[<c-\>]], -- Toggle terminal with Ctrl+\
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "vertical", -- "vertical" | "horizontal" | "tab" | "float"
      float_opts = {
        border = "curved",
        winblend = 3,
      },
    })

    -- Optional: keymaps for common terminals
    local Terminal = require("toggleterm.terminal").Terminal

    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
    function _LAZYGIT_TOGGLE() lazygit:toggle() end

    local htop = Terminal:new({ cmd = "htop", hidden = true, direction = "float" })
    function _HTOP_TOGGLE() htop:toggle() end

    -- Keymaps
    vim.keymap.set("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Toggle LazyGit" })
    vim.keymap.set("n", "<leader>ht", "<cmd>lua _HTOP_TOGGLE()<CR>", { desc = "Toggle htop" })
  end,
}

