-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

vim.keymap.set("n", "<leader>H", function()
  Util.terminal({ "clx" })
end, { desc = "Toggle clx (console HackerNews) floating terminal" })

vim.keymap.set("n", "<leader>D", function()
  Util.terminal({ "lazydocker" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Toggle lazydocker (console Docker Desktop) floating terminal" })
