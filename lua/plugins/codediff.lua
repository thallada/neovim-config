-- VSCode-style diff viewer, replaces sindrets/diffview.nvim.
-- The C diff library is downloaded automatically on first use (:CodeDiff install to force).

return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  opts = {
    diff = {
      layout = "side-by-side",
    },
    explorer = {
      -- Match diffview's file panel: tree listing with +/- line stats
      view_mode = "tree",
      line_stats = {
        enabled = true,
      },
    },
    keymaps = {
      view = {
        -- gq closed every diffview panel, keep it alongside the default q
        quit = { "q", "gq" },
        -- Default <leader>b shadows LazyVim's +buffer group, <leader>e/E mirrors
        -- LazyVim's explorer mnemonic instead
        toggle_explorer = "<leader>E",
        focus_explorer = "<leader>e",
        -- Defaults t and gc shadow the t{char} motion and the gc comment
        -- operator in the (editable) modified buffer
        toggle_layout = "gl",
        toggle_compact = "gz",
      },
    },
  },
  keys = {
    { "<leader>gv", "<cmd>CodeDiff<cr>", desc = "Open [g]it Diff[v]iew tab" },
    { "<leader>gl", "<cmd>CodeDiff history %<cr>", desc = "Toggle git log of current file history" },
    { "<leader>gl", ":'<,'>CodeDiff history<cr>", mode = "v", desc = "Toggle git log of selected lines" },
    { "<leader>gL", "<cmd>CodeDiff history<cr>", desc = "Toggle git log of current branch" },
  },
}
