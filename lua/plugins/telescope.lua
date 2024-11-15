return {
  "telescope.nvim",
  dependencies = {
    {
      "debugloop/telescope-undo.nvim",
      keys = { { "<leader>U", "<cmd>Telescope undo<cr>" } },
      config = function()
        require("telescope").load_extension("undo")
      end,
    },
    {
      "xiyaowong/telescope-emoji.nvim",
      keys = { { "<leader>fj", "<cmd>Telescope emoji<cr>" } },
      config = function()
        require("telescope").load_extension("undo")
      end,
    },
  },
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find Plugin File",
    },
    {
      "<leader>8",
      function()
        require("telescope.builtin").grep_string()
      end,
      desc = "Search word under cursor",
    },
    {
      "<leader>s1", -- remap clashing structural replace key map
      "<cmd>Telescope resume<cr>",
      desc = "Telescope resume",
    },
  },
}
