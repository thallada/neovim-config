require('true-zen').setup()

vim.keymap.set('n', '<leader>zn', [[<Cmd>:TZNarrow<CR>]], { noremap = true, silent = true, desc = "[Z]oom [N]arrow current line" })
vim.keymap.set('v', '<leader>zn', [[<Cmd>:'<,'>TZNarrow<CR>]], { noremap = true, silent = true, desc = "[Z]oom [N]arrow selected lines" })
vim.keymap.set('n', '<leader>zf', [[<Cmd>:TZFocus<CR>]], { noremap = true, silent = true, desc = "[Z]oom [N]arrow current buffer in new tab" })
vim.keymap.set('n', '<leader>zm', [[<Cmd>:TZMinimalist<CR>]], { noremap = true, silent = true, desc = "[Z] Toggle minimalist nvim UI mode" })
vim.keymap.set('n', '<leader>za', [[<Cmd>:TZAtaraxis<CR>]], { noremap = true, silent = true, desc = "[Z]oom [A]taraxis current buffer minimalist mode" })
-- tmux muscle-memory for fullscreening nvim window
vim.keymap.set('n', [[<C-a>z]], [[<Cmd>:TZFocus<CR>]], { desc = "Toggle [Z]oom current buffer in new tab" })
vim.keymap.set('t', [[<C-a>z]], [[<Cmd>:TZFocus<CR>]], { desc = "Toggle [Z]oom current terminal buffer in new tab" })
