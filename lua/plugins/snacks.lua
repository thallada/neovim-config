return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            ["<a-Down>"] = { "history_forward", mode = { "i", "n" } },
            ["<a-Up>"] = { "history_back", mode = { "i", "n" } },
          },
        },
      },
    },
  },
}
