local null_ls = require('null-ls')

null_ls.setup({
	sources = {
		-- Linter
		null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.diagnostics.jsonlint,
		null_ls.builtins.diagnostics.markdownlint,
		null_ls.builtins.diagnostics.stylelint,
		null_ls.builtins.diagnostics.tidy,
		null_ls.builtins.diagnostics.todo_comments,
		null_ls.builtins.diagnostics.tsc,
		-- Formatter
		null_ls.builtins.formatting.eslint_d,
		null_ls.builtins.formatting.markdownlint,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
		}),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.rustfmt,
		null_ls.builtins.formatting.tidy,
		null_ls.builtins.formatting.taplo,
		-- Refactoring
		-- null_ls.builtins.code_actions.refactoring,
		-- Shells
		null_ls.builtins.diagnostics.fish,
		-- Git
		null_ls.builtins.code_actions.gitsigns,
		-- Spelling
		null_ls.builtins.diagnostics.codespell,
	},
})
