vim.filetype.add({
  pattern = {
    [".*/sway/config%.d/.*%.conf"] = "swayconfig"
  }
})

