require('rest-nvim').setup({
	skip_ssl_verification = true,
})

vim.keymap.set('n', '<leader>rd', [[<Plug>RestNvim]], { noremap = false, silent = true, desc = "Run rest.nvim under cursor" })
vim.keymap.set('n', '<leader>ry', [[<Plug>RestNvimPreview]], { noremap = false, silent = true, desc = "Show cURL command for rest.nvim under cursor"})
vim.keymap.set('n', '<leader>ri', [[<Plug>RestNvimLast]], { noremap = false, silent = true })
