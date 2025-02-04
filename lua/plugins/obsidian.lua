return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre /mnt/c/Users/tyler/notes/*.md",
    "BufNewFile /mnt/c/Users/tyler/notes/*.md",
    "BufReadPre " .. vim.fn.expand("~") .. "/notes/*.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/notes/*.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/notes",
      },
    },
  },
}
