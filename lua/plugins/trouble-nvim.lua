vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
    { silent = true, noremap = true, desc = "Toggle trouble buffer diagnostics" }
)
vim.keymap.set('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>',
    { silent = true, noremap = true, desc = "Toggle trouble workspace diagnostics" }
)
vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>',
    { silent = true, noremap = true, desc = "Toggle trouble document diagnostics" }
)
vim.keymap.set('n', '<leader>xl', '<cmd>TroubleToggle loclist<cr>',
    { silent = true, noremap = true, desc = "Toggle trouble diagnostics in loclist" }
)
vim.keymap.set('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>',
    { silent = true, noremap = true, desc = "Toggle trouble diagnostics in quickfix" }
)
vim.keymap.set('n', 'gR', '<cmd>TroubleToggle lsp_references<cr>',
    { silent = true, noremap = true, desc = "Toggle trouble LSP [R]eferences under cursor" }
)
