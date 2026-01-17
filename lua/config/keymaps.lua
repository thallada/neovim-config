-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

vim.keymap.set("n", "<leader>H", function()
  Util.terminal({ "clx" })
end, { desc = "Toggle clx (console HackerNews) floating terminal" })

vim.keymap.set("n", "<leader>dd", function()
  Util.terminal({ "lazydocker" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Toggle lazydocker (console Docker Desktop) floating terminal" })

vim.keymap.set("n", "<leader>B", function()
  Util.terminal({ "btop" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Toggle btop (improved console top monitor) floating terminal" })

-- Allow Cmd+V pasting on mac
if vim.fn.has("mac") == 1 then
  vim.keymap.set("n", "<D-v>", '"+p')
  vim.keymap.set("n", "<D-s-v>", '"+p')
  vim.keymap.set("i", "<D-v>", "<C-r>*")
  vim.keymap.set("i", "<D-s-v>", "<C-r>*")
  vim.keymap.set("t", "<D-v>", '<C-\\><C-n>"+pi')
  vim.keymap.set("t", "<D-s-v>", '<C-\\><C-n>"+pi')
end
