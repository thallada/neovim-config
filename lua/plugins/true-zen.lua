return {
  "Pocco81/true-zen.nvim",
  cmd = { "TZNarrow", "TZFocus", "TZMinimalist", "TZAtaraxis" },
  keys = {
    { "<leader>zn", [[<Cmd>:TZNarrow<CR>]], desc = "[Z]oom [N]arrow current line" },
    { "<leader>zn", [[<Cmd>:'<,'>TZNarrow<CR>]], mode = "v", desc = "[Z]oom [N]arrow selected lines" },
    { "<leader>zf", [[<Cmd>:TZFocus<CR>]], desc = "[Z]oom [N]arrow current buffer in new tab" },
    { "<leader>zm", [[<Cmd>:TZMinimalist<CR>]], desc = "[Z] Toggle minimalist nvim UI mode" },
    { "<leader>za", [[<Cmd>:TZAtaraxis<CR>]], desc = "[Z]oom [A]taraxis current buffer minimalist mode" },
    {
      "<C-w>z",
      [[<Cmd>:TZFocus<CR>]],
      mode = { "n", "t" },
      desc = "Toggle [Z]oom current buffer in new tab",
    },
    -- tmux memory for fullscreening nvim window
    { "<C-a>z", [[<Cmd>:TZFocus<CR>]], mode = { "n", "t" }, desc = "Toggle [Z]oom current buffer in new tab" },
  },
}
