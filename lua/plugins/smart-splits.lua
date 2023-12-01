return {
  "mrjones2014/smart-splits.nvim",
  keys = {
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize left",
      mode = { "n", "t" },
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize down",
      mode = { "n", "t" },
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize up",
      mode = { "n", "t" },
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize right",
      mode = { "n", "t" },
    },
    -- because ShareMouse isn't mapping Alt to Option correctly...
    {
      "˙",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize left",
      mode = { "n", "t" },
    },
    {
      "∆",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize down",
      mode = { "n", "t" },
    },
    {
      "˚",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize up",
      mode = { "n", "t" },
    },
    {
      "¬",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize right",
      mode = { "n", "t" },
    },
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Move cursor left",
      mode = { "n", "t" },
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Move cursor down",
      mode = { "n", "t" },
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Move cursor up",
      mode = { "n", "t" },
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Move cursor right",
      mode = { "n", "t" },
    },
    {
      "<C-A-h>",
      function()
        require("smart-splits").swap_buf_left()
      end,
      desc = "Swap buffer left",
      mode = { "n", "t" },
    },
    {
      "<C-A-j>",
      function()
        require("smart-splits").swap_buf_down()
      end,
      desc = "Swap buffer down",
      mode = { "n", "t" },
    },
    {
      "<C-A-k>",
      function()
        require("smart-splits").swap_buf_up()
      end,
      desc = "Swap buffer up",
      mode = { "n", "t" },
    },
    {
      "<C-A-l>",
      function()
        require("smart-splits").swap_buf_right()
      end,
      desc = "Swap buffer right",
      mode = { "n", "t" },
    },
  },
}
