require('neoai').setup()

vim.keymap.set('n', '<leader>ai', '<cmd>NeoAI<cr>',
	{ silent = true, noremap = true, desc = "Toggle Neo[AI]" }
)
vim.keymap.set('n', '<leader>ac', '<cmd>NeoAIContext<cr>',
	{ silent = true, noremap = true, desc = "Toggle Neo[A]i with [C]ontext of current buffer" }
)
-- Can't get this to work :/
-- vim.keymap.set('x', '<leader>ai', [[<cmd>'<,'>NeoAIContext<cr>]],
-- 	{ silent = true, noremap = true, desc = "Toggle Neo[AI] with context of selected text" }
-- )
