return {
  "pwntester/octo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    -- OR 'ibhagwan/fzf-lua',
    "nvim-tree/nvim-web-devicons",
  },
  cmd = {
    "Octo",
  },
  opt = {
    mappings = {
      pull_request = {
        next_comment = { lhs = "<space>]c", desc = "go to next comment" },
        prev_comment = { lhs = "<space>[c", desc = "go to previous comment" },
      },
    },
  },
}
