-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guifont = "Berkeley Mono Variable:h13"

-- idk if it does anything cause I have to set it in the nvim-cmp settings too
vim.opt.completeopt = "menu,menuone,noinsert,noselect"

-- Window decorations
vim.opt.title = true
vim.opt.titlestring = "%{substitute(getcwd(),$HOME,'~','')} - Neovide"
