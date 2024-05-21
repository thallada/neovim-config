return {
  "folke/trouble.nvim",
  keys = {
    -- same keybindings as in LazyVim, but with focus=true
    { "<leader>cs", "<cmd>Trouble symbols toggle focus=true<cr>", desc = "Symbols (Trouble)" },
    {
      "<leader>cS",
      "<cmd>Trouble lsp toggle focus=true win.position=right<cr>",
      desc = "LSP references/definitions/... (Trouble)",
    },
  },
}
