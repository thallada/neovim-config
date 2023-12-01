require('mason').setup({
  max_concurrent_installers = 10,
})
require('mason-lspconfig').setup({
  automatic_installation = true,
})

local on_attach = require('plugins.lsp.on_attach')
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
-- Setup by typescript.nvim automatically
-- require('lspconfig')['tsserver'].setup({
--   on_attach = on_attach,
--   flags = lsp_flags,
-- })
require('lspconfig')['jsonls'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
require('lspconfig')['eslint'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
  root_dir = require('lspconfig').util.find_git_ancestor,
})
require('lspconfig')['html'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
require('lspconfig')['cssls'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
-- Setup by rust-tools automatically
-- require('lspconfig')['rust_analyzer'].setup({
--   on_attach = on_attach,
--   flags = lsp_flags,
--   -- Server-specific settings...
--   settings = {
--     ['rust-analyzer'] = {}
--   }
-- })
require('lspconfig')['lua_ls'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    Lua = {
      completion = {
	callSnippet = "Replace"
      },
      runtime = {
	-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
	version = 'LuaJIT',
      },
      diagnostics = {
	-- Get the language server to recognize the `vim` global
	globals = { 'vim' },
      },
      workspace = {
	-- Make the server aware of Neovim runtime files
	library = vim.api.nvim_get_runtime_file('', true),
      },
    },
  },
})
require('lspconfig')['bashls'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
require('lspconfig')['marksman'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
require('lspconfig')['sqlls'].setup({
  on_attach = function(client, bufn)
    on_attach(client, bufn)
    require('sqlls').on_attach(client, bufn)
  end,
  flags = lsp_flags,
})
require('lspconfig')['taplo'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
require('lspconfig')['zls'].setup({
  on_attach = on_attach,
  flags = lsp_flags,
})
