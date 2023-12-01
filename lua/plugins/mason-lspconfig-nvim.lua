require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'rust_analyzer', 'bashls', 'cssls', 'html', 'jsonls', 'sqls', 'taplo'},
  automatic_installation = true,
})
