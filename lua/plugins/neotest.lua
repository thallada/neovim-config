local neotest = require('neotest')
neotest.setup({
  adapters = {
    require('neotest-rust'),
  },
})

vim.keymap.set("n", "<leader>t", function() neotest.run.run() end)
vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand('%')) end)
vim.keymap.set("n", "<leader>tt", function() neotest.run.run({ strategy = 'dap' }) end)
vim.keymap.set("n", "<leader>ta", function() neotest.run.attach() end)
vim.keymap.set("n", "<leader>to", function() neotest.output.open({ enter = true }) end)
vim.keymap.set("n", "<leader>ts", function() neotest.summary.toggle() end)

vim.diagnostic.config({
  neotest = true,
}, vim.api.nvim_create_namespace('neotest'))
