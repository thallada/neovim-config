-- Pasting with Control-V because of muscle-memory
vim.keymap.set('n', '<C-v>', '"+p')
vim.keymap.set('n', '<C-s-v>', '"+p')
vim.keymap.set('i', '<C-v>', '<C-r>*')
vim.keymap.set('i', '<C-s-v>', '<C-r>*')
vim.keymap.set('t', '<C-v>', '<C-\\><C-n>"+pi')
vim.keymap.set('t', '<C-s-v>', '<C-\\><C-n>"+pi')

-- Faster window navigation
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<leader>,', ':noh<CR>', { silent = true })

vim.keymap.set('n', '<leader>v', [[<Cmd>:e ~/.config/nvim/init.lua<CR>]], { silent = true })

-- URL handling (since I disabled netrw)
-- source: https://sbulav.github.io/vim/neovim-opening-urls/
if vim.fn.has('mac') == 1 then
  vim.keymap.set('', 'gx', [[<Cmd>call jobstart(['open', expand('<cfile>')], { 'detach': v:true })<CR>]], { noremap = true, silent = true })
elseif vim.fn.has("unix") == 1 then
  vim.keymap.set('', 'gx', [[<Cmd>call jobstart(['xdg-open', expand('<cfile>')], { 'detach': v:true })<CR>]], { noremap = true, silent = true })
else
  vim.keymap.set[''].gx = {[[<Cmd>lua print("Error: gx is not supported on this OS!")<CR>]]}
end
