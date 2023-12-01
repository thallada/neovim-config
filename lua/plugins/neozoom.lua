require('neo-zoom').setup({
	exclude_filetype = { 'fzf', 'qf', 'dashboard', 'telescope' },
	left_ratio = 0.05,
	top_ratio = 0.03,
	width_ratio = 0.9,
	height_ratio = 0.9,
})

vim.keymap.set('n', '<C-w>o', [[<Cmd>:NeoZoomToggle<CR>]], { silent = true })
vim.keymap.set('v', '<C-w>o', [[<Cmd>:NeoZoomToggle<CR>gv]], { silent = true })
