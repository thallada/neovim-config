local colors = require("gruvbox.palette").colors;

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
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
    dark0_hard = '#131516',
    dark1 = '#242424',
  },
  overrides = {
    Pmenu = { bg = '#222222'},
    GruvboxAquaSign = { bg = "NONE" },
    GruvboxBlueSign = { bg = "NONE" },
    GruvboxGreenSign = { bg = "NONE" },
    GruvboxOrangeSign = { bg = "NONE" },
    GruvboxPurpleSign = { bg = "NONE" },
    GruvboxRedSign = { bg = "NONE" },
    GruvboxYellowSign = { bg = "NONE" },
    SignColumn = { bg = "NONE" },
  }
})
vim.o.background = "dark"

-- TODO: how to apply this when colorscheme changes?
vim.api.nvim_set_hl(0, 'DiffDelete', { bg = "none", fg = colors.dark2 })
vim.api.nvim_set_hl(0, 'DiffviewDiffDelete', { bg = "none", fg = colors.dark2 })
vim.api.nvim_set_hl(0, 'DiffviewDiffAddAsDelete', { bg = "#370000" })
vim.api.nvim_set_hl(0, 'DiffAdd', { bg = "#393400" }) -- #122f2f
vim.api.nvim_set_hl(0, 'DiffChange', { bg = "#222a36" })
vim.api.nvim_set_hl(0, 'DiffText', { bg = "#2f3f5c" }) -- #2f3f5c
