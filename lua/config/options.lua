-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  -- Variable font looks too bold on windows
  vim.opt.guifont = "Berkeley Mono:h10.5:#e-subpixelantialias"
  vim.opt.linespace = 1
else
  vim.opt.guifont = "Berkeley Mono Variable:h13"
end

-- idk if it does anything cause I have to set it in the nvim-cmp settings too
vim.opt.completeopt = "menu,menuone,noinsert,noselect"

-- Window decorations
vim.opt.title = true
vim.opt.titlestring = "%{substitute(getcwd(),$HOME,'~','')} - Neovim"
