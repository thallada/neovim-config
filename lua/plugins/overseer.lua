return {
  "stevearc/overseer.nvim",
  opts = {
    task_list = {
      direction = "left",
    },
  },
  keys = {
    { "<leader>o", "<cmd>OverseerToggle<CR>", desc = "Toggle Overseer Panel" },
  },
}
