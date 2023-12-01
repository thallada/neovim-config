local colors = require("gruvbox.palette").get_base_colors({}, "dark", "hard");

function FixGruvbox()
  vim.api.nvim_set_hl(0, 'DiffviewDiffAddAsDelete', { bg = "#431313" })
  vim.api.nvim_set_hl(0, 'DiffDelete', { bg = "none", fg = colors.dark2 })
  vim.api.nvim_set_hl(0, 'DiffviewDiffDelete', { bg = "none", fg = colors.dark2 })
  vim.api.nvim_set_hl(0, 'DiffAdd', { bg = "#142a03" })
  vim.api.nvim_set_hl(0, 'DiffChange', { bg = "#3B3307" })
  vim.api.nvim_set_hl(0, 'DiffText', { bg = "#4D520D" })
end
FixGruvbox()

vim.api.nvim_create_autocmd(
  "ColorScheme",
      { pattern = { "gruvbox" }, callback = FixGruvbox }
)
