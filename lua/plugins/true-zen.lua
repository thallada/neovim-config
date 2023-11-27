return {
  "Pocco81/true-zen.nvim",
  cmd = { "TZNarrow", "TZFocus", "TZMinimalist", "TZAtaraxis" },
  keys = {
    { "n", "<leader>zn", [[<Cmd>:TZNarrow<CR>]], { desc = "[Z]oom [N]arrow current line" } },
    { "v", "<leader>zn", [[<Cmd>:'<,'>TZNarrow<CR>]], { desc = "[Z]oom [N]arrow selected lines" } },
    { "n", "<leader>zf", [[<Cmd>:TZFocus<CR>]], { desc = "[Z]oom [N]arrow current buffer in new tab" } },
    { "n", "<leader>zm", [[<Cmd>:TZMinimalist<CR>]], { desc = "[Z] Toggle minimalist nvim UI mode" } },
    { "n", "<leader>za", [[<Cmd>:TZAtaraxis<CR>]], { desc = "[Z]oom [A]taraxis current buffer minimalist mode" } },
    -- tmux memory for fullscreening nvim window
    { "n", [[<C-a>z]], [[<Cmd>:TZFocus<CR>]], { desc = "Toggle [Z]oom current buffer in new tab" } },
    { "t", [[<C-a>z]], [[<Cmd>:TZFocus<CR>]], { desc = "Toggle [Z]oom current terminal buffer in new tab" } },
  },
}
