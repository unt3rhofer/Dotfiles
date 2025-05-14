-- ~/.config/nvim/lua/plugins/cmp.lua

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP source
    "hrsh7th/cmp-buffer",   -- Buffer source
    "hrsh7th/cmp-path",     -- Path completion
    "hrsh7th/cmp-cmdline",  -- Command line
    "L3MON4D3/LuaSnip",     -- Optional snippet engine
  },
  event = "InsertEnter",
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = {
        autocomplete = false, -- 🔇 no automatic popup
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),    -- manual popup
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirm
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
      experimental = {
        ghost_text = true, -- 💡 inline suggestions
      },
    })
  end,
}

