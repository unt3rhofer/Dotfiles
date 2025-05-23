-- ~/Dotfiles/neovim/lua/plugins/treesitter.lua

return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "cpp", "python", "ini", "markdown", "yaml"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = false },  
        })
    end,
 }

