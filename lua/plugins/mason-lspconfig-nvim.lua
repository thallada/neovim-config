require('mason-lspconfig').setup({
  ensure_installed = { 'sumneko_lua', 'rust_analyzer', 'bashls', 'cssls', 'html', 'jsonls', 'sqls', 'taplo'},
  automatic_installation = true,
})
