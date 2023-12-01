return {
  "ktunprasert/gui-font-resize.nvim",
  config = function()
    require("gui-font-resize").setup({
      default_size = 13.0,
      change_by = 1,
    })
  end,
  keys = {
    { "<D-Up>", "<Cmd>GUIFontSizeUp<CR>", desc = "Increase font size" },
    { "<D-Down>", "<Cmd>GUIFontSizeDown<CR>", desc = "Decrease font size" },
    {
      "<D-0>",
      "<Cmd>set guifont=Berkeley\\ Mono\\ Variable:h13 | GUIFontSizeSet<CR>",
      desc = "Set font family and size to default",
    },
  },
}
