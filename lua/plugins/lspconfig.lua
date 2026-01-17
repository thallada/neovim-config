return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = true,
      virtual_lines = { current_line = true },
    },
    servers = {
      clangd = {
        -- removing .proto from the list of filetypes since clangd doesn't seem to be able to parse them
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
      },
      -- Disable oxlint LSP - using nvim-lint with CLI instead for type-aware support
      oxlint = { enabled = false },
    },
    -- Disable eslint formatting as it's slow and timing out on big projects
    -- taken from
    -- https://github.com/LazyVim/LazyVim/pull/4225/files
    setup = {
      eslint = function()
        return
      end,
    },
  },
}
