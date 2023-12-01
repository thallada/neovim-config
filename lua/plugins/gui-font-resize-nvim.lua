require('gui-font-resize').setup({
	default_size = 11.0, -- absolute size it will fallback to when :GUIFontSizeSet is not specified
	change_by = 1, -- step value that will inc/dec the fontsize by
})

vim.keymap.set('n', '<D-Up>', [[<Cmd>GUIFontSizeUp<CR>]], { noremap = true, silent = true})
vim.keymap.set('n', '<D-Down>', [[<Cmd>GUIFontSizeDown<CR>]], { noremap = true, silent = true})
vim.keymap.set('n', '<D-0>', [[<Cmd>set guifont=Hack:h11 | GUIFontSizeSet<CR>]], { noremap = true, silent = true})
