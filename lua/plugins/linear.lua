return {
  {
    "rmanocha/linear-nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("linear-nvim").setup()
    end,
    keys = {
      {
        "<leader>mm",
        function()
          require("linear-nvim").show_assigned_issues()
        end,
        mode = "n",
        desc = "Linear: show assigned issues",
      },
      {
        "<leader>mc",
        function()
          require("linear-nvim").create_issue()
        end,
        mode = "v",
        desc = "Linear: create issue from selected text",
      },
      {
        "<leader>mc",
        function()
          require("linear-nvim").create_issue()
        end,
        mode = "n",
        desc = "Linear: create issue",
      },
      {
        "<leader>ms",
        function()
          require("linear-nvim").show_issue_details()
        end,
        mode = "n",
        desc = "Linear: show issue details",
      },
    },
  },
}
