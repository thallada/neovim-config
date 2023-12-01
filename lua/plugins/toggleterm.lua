return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "horizontal",
    open_mapping = [[<C-\>]],
    hide_numbers = true,
  },
  cmd = {
    "ToggleTerm",
    "TermExec",
    "ToggleTermSendCurrentLine",
    "ToggleTermSendVisualLines",
    "ToggleTermSendVisualSelection",
    "ToggleTermOpenAll",
    "ToggleTermCloseAll",
    "ToggleTermToggleAll",
  },
  keys = {
    [[<C-\>]],
    { "<M-=>", [[<Cmd>ToggleTerm direction=float<CR>]], { desc = "Toggle terminal in floating window" } },
    {
      "<M->",
      [[<Cmd>ToggleTerm direction=horizontal<CR>]],
      { desc = "Toggle terminal in horizontal bottom window" },
    },
    -- tmux muscle-memory for fullscreening nvim window
    -- replaced with true-zen.nvim
    -- vim.keymap.set('n', [[<C-a>z]], [[<Cmd>ToggleTermToggleAll<CR>]])
    -- vim.keymap.set('t', [[<C-a>z]], [[<Cmd>tab split<CR>]])
    { "t", "<Esc>", [[<C-\><C-n>]], { desc = "Escape terminal mode" } },
    { "t", "<C-j>", [[<Cmd>wincmd h<CR>]], { desc = "Move focus down one window" } },
    { "t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move focus up one window" } },
    { "t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move focus left one window" } },
    { "t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move focus right one window" } },
    { "n", [[<C-\>]], [[<Cmd>ToggleTerm<CR>]] },
    { "n", "<F12>", [[<Cmd>ToggleTerm<CR>]] },
    { "t", "<F12>", [[<Cmd>ToggleTerm<CR>]] },
    -- { "<leader>H", "<cmd>lua _clx_toggle()<CR>", { desc = "Toggle clx (console HackerNews) floating terminal" } },
    -- { "<leader>G", "<cmd>lua _gitui_toggle()<CR>", { desc = "Toggle gitui floating terminal" } },
  },
}
