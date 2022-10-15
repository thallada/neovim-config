require('true-zen').setup()

vim.keymap.set('n', '<leader>zn', [[<Cmd>:TZNarrow<CR>]], { noremap = true, silent = true })
vim.keymap.set('v', '<leader>zn', [[<Cmd>:'<,'>TZNarrow<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>zf', [[<Cmd>:TZFocus<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>zm', [[<Cmd>:TZMinimalist<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<leader>za', [[<Cmd>:TZAtaraxis<CR>]], { noremap = true, silent = true })
-- tmux muscle-memory for fullscreening nvim window
vim.keymap.set('n', [[<C-a>z]], [[<Cmd>:TZFocus<CR>]])
vim.keymap.set('t', [[<C-a>z]], [[<Cmd>:TZFocus<CR>]])
