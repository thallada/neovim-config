return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        -- removing .proto from the list of filetypes since clangd doesn't seem to be able to parse them
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
      },
    },
  },
}
