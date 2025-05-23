 return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("render-markdown").setup({
      render_on_buf_write = false, -- disable write-based rendering
      render_on_insert = true      -- 🟢 enable render while in insert mode
    })
  end,
  ft = "markdown",
}

