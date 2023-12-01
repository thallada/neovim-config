-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Turn off cursorline in terminal windows
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "setlocal listchars= | set nocursorline | set nocursorcolumn",
})
