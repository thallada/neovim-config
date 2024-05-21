return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  opts = {
    enhanced_diff_hl = true,
    keymaps = {
      view = {
        ["gq"] = "<Cmd>DiffviewClose<CR>",
      },
      file_panel = {
        ["gq"] = "<Cmd>DiffviewClose<CR>",
      },
      file_history_panel = {
        ["gq"] = "<Cmd>DiffviewClose<CR>",
      },
    },
  },
  keys = {
    { "<leader>gl", ":'<,'>DiffviewFileHistory<cr>", mode = "v", desc = "Toggle git log of selected lines" },
    { "<leader>gL", "<cmd>DiffviewFileHistory<cr>", desc = "Toggle git log of current branch" },
    { "<leader>gl", "<cmd>DiffviewFileHistory %<cr>", desc = "Toggle git log of current file history" },
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff current file against the index" },
  },
}
