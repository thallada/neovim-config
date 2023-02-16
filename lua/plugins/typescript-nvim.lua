local on_attach = require('plugins.lsp.on_attach')

require('typescript').setup({
	server = { -- pass options to lspconfig's setup method
		on_attach = on_attach,
	},
})
