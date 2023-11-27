return {
  "tpope/vim-fugitive",
  keys = {
    { "<leader>gx", [[<Cmd>G<CR>]], { noremap = false, silent = true, desc = "Toggle [G]it status window" } },
    { "<leader>gs", [[<Cmd>Git<CR>]], { noremap = false, silent = true, desc = "Toggle [G]it [S]tatus window" } },
    {
      "<leader>gfd",
      [[<Cmd>Gdiffsplit<CR>]],
      { noremap = false, silent = true, desc = "[G]it [D]iff current file against index with [F]ugitive" },
    },
    { "<leader>gc", [[<Cmd>Git commit<CR>]], { noremap = false, silent = true, desc = "[G]it [C]ommit" } },
    { "<leader>gb", [[<Cmd>Git blame -C<CR>]], { noremap = false, silent = true, desc = "[G]it [B]lame" } },
    { "<leader>gp", [[<Cmd>Git push<CR>]], { noremap = false, silent = true, desc = "[G]it [P]ush" } },
    { "<leader>gf", [[<Cmd>Git push --force<CR>]], { noremap = false, silent = true, desc = "[G]it [F]orce push" } },
    { "<leader>gu", [[<Cmd>Git pull<CR>]], { noremap = false, silent = true, desc = "[G]it p[U]ll" } },
    {
      "<leader>gh",
      [[<Cmd>Git diff --cached<CR>]],
      { noremap = false, silent = true, desc = "[G]it diff current staged changes" },
    },
    {
      "<leader>go",
      [[<Cmd>GBrowse<CR>]],
      { noremap = false, silent = true, desc = "[B]rowse [G]it URL for fugitive object under cursor" },
    },
    {
      "v",
      "<leader>go",
      [[<Cmd>'<,'>GBrowse<CR>]],
      { noremap = false, silent = true, desc = "[B]rowse [G]it URL for selected lines" },
    },
  },
}
