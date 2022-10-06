require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true, -- will make italic comments and special strings
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard" or "soft"
  dim_inactive = true,
  transparent_mode = false,
  palette_overrides = {
    dark1 = '#282828',
  },
  overrides = {
    Pmenu = { bg = '#222222'}
  }
})
vim.o.background = "dark"
vim.api.nvim_command([[colorscheme gruvbox]])
