-- thallada: this is setup in rust-tools
local dap = require('dap')
-- dap.adapters.codelldb = {
--   type = 'server',
--   port = '${port}',
--   executable = {
--     command = '/home/thallada/vscode-lldb/extension/adapter/codelldb',
--     args = { '--port', '${port}'}
--   }
-- }
-- dap.configurations.rust = {
--   {
--     name = "Launch file",
--     type = "codelldb",
--     request = "launch",
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = true,
--   },
-- }

vim.keymap.set('n', '<leader>b', [[<Cmd>lua require('dap').toggle_breakpoint()<CR>]])
vim.keymap.set('n', '<leader>be', [[<Cmd>lua require('dap').set_exception_breakpoints()<CR>]])
vim.keymap.set('n', '<leader>bc', [[<Cmd>lua require('dap').clear_breakpoints()<CR>]])
vim.keymap.set('n', '<leader>bo', [[<Cmd>lua require('dapui').toggle()<CR>]])
