local actions = require("diffview.actions")

require("diffview").setup({
	enhanced_diff_hl = true,
	keymaps = {
		view = {
			["gq"] = "<Cmd>DiffviewClose<CR>",
		},
		file_panel = {
			["gq"] = "<Cmd>DiffviewClose<CR>",
		},
		file_history_panel = {
			["gq"] = "<Cmd>DiffviewClose<CR>",
		},
	}
})

vim.keymap.set('v', '<leader>gl', [[<Cmd>'<,'>DiffviewFileHistory<CR>]], { noremap = false, silent = true, desc = "Toggle [G]it [L]og of selected lines" })
vim.keymap.set('n', '<leader>gL', [[<Cmd>DiffviewFileHistory<CR>]], { noremap = false, silent = true, desc = "Toggle [G]it [L]og of current branch" })
vim.keymap.set('n', '<leader>gl', [[<Cmd>DiffviewFileHistory %<CR>]], { noremap = false, silent = true, desc = "Toggle [G]it [L]og of current file history" })
vim.keymap.set('n', '<leader>gd', [[<Cmd>DiffviewOpen<CR>]], { noremap = false, silent = true, desc = "[G]it [D]iff current file against index" })
