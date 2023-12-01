return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
      config = function()
        require("toggle_lsp_diagnostics").init({ virtual_text = false })
      end,
    },
    {
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
        require("lsp_lines").setup()
      end,
      keys = {
        {
          "<leader>xv",
          function()
            require("lsp_lines").toggle()
            require("toggle_lsp_diagnostics").toggle_virtual_text()
          end,
          desc = "Toggle lsp_lines diagnostics",
        },
        {
          "<leader>xy",
          function()
            if vim.diagnostic.config().virtual_text then
              require("toggle_lsp_diagnostics").toggle_virtual_text()
            else
              require("lsp_lines").toggle()
            end
          end,
          desc = "Toggle diagnostics virtual display",
        },
        {
          "<leader>xz",
          function()
            if not vim.diagnostic.config().virtual_text then
              require("lsp_lines").toggle()
            end
            require("toggle_lsp_diagnostics").toggle_diagnostics()
          end,
          desc = "Toggle all diagnostics",
        },
      },
    },
  },
  opts = {
    diagnostics = {
      virtual_text = true,
      virtual_lines = { only_current_line = true },
    },
  },
}
