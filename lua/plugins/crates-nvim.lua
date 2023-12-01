local crates = require('crates')
local opts = { silent = true }

crates.setup()

vim.keymap.set('n', '<leader>ct', crates.toggle, { silent = true, desc = "Rust [C]rate [T]oggle" })
vim.keymap.set('n', '<leader>cr', crates.reload, { silent = true, desc = "Rust [C]rate [R]eload"})

vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, { silent = true, desc = "Rust [C]rate show [V]ersions" })
vim.keymap.set('n', '<leader>cf', crates.show_features_popup, { silent = true, desc = "Rust [C]rate show [F]eatures" })
vim.keymap.set('n', '<leader>cd', crates.show_dependencies_popup, { silent = true, desc = "Rust [C]rate show [D]ependencies" })

vim.keymap.set('n', '<leader>cu', crates.update_crate, { silent = true, desc = "Rust [C]rate [U]pdate (to newest compatible version)" })
vim.keymap.set('v', '<leader>cu', crates.update_crates, { silent = true, desc = "Rust [C]rates [U]pdate (to newest compatible versions)" })
vim.keymap.set('n', '<leader>ca', crates.update_all_crates, { silent = true, desc = "Rust [C]rates update [A]ll (to newest compatible versions)" })
vim.keymap.set('n', '<leader>cU', crates.upgrade_crate, { silent = true, desc = "Rust [C]rate [U]pgrade" })
vim.keymap.set('v', '<leader>cU', crates.upgrade_crates, { silent = true, desc = "Rust [C]rates [U]pgrade" })
vim.keymap.set('n', '<leader>cA', crates.upgrade_all_crates, { silent = true, desc = "Rust [C]rates upgrade [A]ll" })

vim.keymap.set('n', '<leader>cH', crates.open_homepage, { silent = true, desc = "Rust [C]rate open [H]omepage" })
vim.keymap.set('n', '<leader>cR', crates.open_repository, { silent = true, desc = "Rust [C]rate open [R]epository" })
vim.keymap.set('n', '<leader>cD', crates.open_documentation, { silent = true, desc = "Rust [C]rate open [D]ocumentation" })
vim.keymap.set('n', '<leader>cC', crates.open_crates_io, { silent = true, desc = "Rust [C]rate open [C]rates.io" })
