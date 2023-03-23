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
    Search = { fg = "#E1A416" },
    IncSearch = { fg = "#E56700" },
  }
})
vim.o.background = "dark"
