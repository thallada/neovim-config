return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  keys = {
    -- disable this keymap since it conflicts with avante.nvim
    { "<leader>aa", false },
    -- replace the keymap with a new one
    {
      "<leader>aA",
      function()
        return require("CopilotChat").toggle()
      end,
      desc = "Toggle (CopilotChat)",
      mode = { "n", "v" },
    },
  },
}
