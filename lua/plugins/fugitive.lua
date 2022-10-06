vim.keymap.set('n', '<leader>gx', [[<Cmd>G<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gs', [[<Cmd>Git<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gd', [[<Cmd>Gdiff<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gc', [[<Cmd>Gcommit<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gb', [[<Cmd>Git blame -C<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gp', [[<Cmd>Git push<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gf', [[<Cmd>Git push --force<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gu', [[<Cmd>Git pull<CR>]], { noremap = false, silent = true })
vim.keymap.set('n', '<leader>gh', [[<Cmd>Git diff --cached<CR>]], { noremap = false, silent = true })
