local drex = require('drex')
local elements = require('drex.elements')

-- open the home directory
vim.keymap.set('n', '~', '<CMD>Drex ~<CR>', { desc = "Open home [~] directory in drex" })
-- open parent DREX buffer and focus current file
vim.keymap.set('n', '-', function()
	local path = vim.fn.expand('%:p')
	if path == '' then
		drex.open_directory_buffer() -- open at cwd
	else
		drex.open_directory_buffer(vim.fn.fnamemodify(path, ':h'))
		elements.focus_element(0, path)
	end
end, { desc = "Open current directory in drex" })

require('drex.config').configure({
	hijack_netrw = true,
	keybindings = {
		['n'] = {
			['~'] = '<CMD>Drex ~<CR>',
			['-'] = '<CMD>lua require("drex.elements").open_parent_directory()<CR>',
			['.'] = function()
				local element = require('drex.utils').get_element(vim.api.nvim_get_current_line())
				local left = vim.api.nvim_replace_termcodes('<left>', true, false, true)
				vim.api.nvim_feedkeys(': ' .. element .. string.rep(left, #element + 1), 'n', true)
			end,
			['<CR>'] = function()
				local line = vim.api.nvim_get_current_line()

				if require('drex.utils').is_open_directory(line) then
					elements.collapse_directory()
				else
					elements.expand_element()
				end
			end,
		}
	},
	on_enter = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = 'no'
	end,
})
