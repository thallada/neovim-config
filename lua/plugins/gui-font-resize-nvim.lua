require('gui-font-resize').setup({
	default_size = 11.0, -- absolute size it will fallback to when :GUIFontSizeSet is not specified
	change_by = 1, -- step value that will inc/dec the fontsize by
})

vim.keymap.set('n', '<D-Up>', [[<Cmd>GUIFontSizeUp<CR>]], { noremap = true, silent = true, desc = "Increase font size" })
vim.keymap.set('n', '<D-Down>', [[<Cmd>GUIFontSizeDown<CR>]], { noremap = true, silent = true, desc = "Decrease font size" })
vim.keymap.set('n', '<D-0>', [[<Cmd>set guifont=Berkeley Mono Variable:h12 | GUIFontSizeSet<CR>]], { noremap = true, silent = true, desc = "Set font family and size to default" })
