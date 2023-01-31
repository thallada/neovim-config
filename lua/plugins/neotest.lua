local neotest = require('neotest')
neotest.setup({
  adapters = {
    require('neotest-rust'),
  },
})

vim.keymap.set("n", "<leader>t", function() neotest.run.run() end, { desc = "Run neo[T]ests under cursor"})
vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand('%')) end, { desc = "Run neo[T]ests in current file" })
vim.keymap.set("n", "<leader>tt", function() neotest.run.run({ strategy = 'dap' }) end, { desc = "Run neo[T]ests in DAP debugging mode" })
vim.keymap.set("n", "<leader>ta", function() neotest.run.attach() end, { desc = "[A]ttach to neo[T]est process" })
vim.keymap.set("n", "<leader>to", function() neotest.output.open({ enter = true }) end, { desc = "[O]pen neo[T]ests summary window" })
vim.keymap.set("n", "<leader>ts", function() neotest.summary.toggle() end, { desc = "Toggle neo[T]est [S]ummary window"})

vim.diagnostic.config({
  neotest = true,
}, vim.api.nvim_create_namespace('neotest'))
