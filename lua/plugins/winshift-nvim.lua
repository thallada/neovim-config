require('winshift').setup()

vim.keymap.set('n', '<C-W><C-M>', [[<Cmd>WinShift<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-W>m', [[<Cmd>WinShift<CR>]], { noremap = true, silent = true })

vim.keymap.set('n', '<C-W>X', [[<Cmd>WinShift swap<CR>]], { noremap = true, silent = true })

vim.keymap.set('n', '<C-M-H>', [[<Cmd>WinShift left<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-M-J>', [[<Cmd>WinShift down<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-M-K>', [[<Cmd>WinShift up<CR>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-M-L>', [[<Cmd>WinShift right<CR>]], { noremap = true, silent = true })
