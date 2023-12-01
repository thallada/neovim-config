return {
  "rest-nvim/rest.nvim",
  ft = "http",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  keys = {
    {
      "<leader>hr",
      function()
        require("rest-nvim").run()
      end,
      desc = "Run HTTP request under cursor",
    },
    {
      "<leader>hp",
      function()
        require("rest-nvim").run(true)
      end,
      desc = "Preview HTTP request under cursor",
    },
  },
}
