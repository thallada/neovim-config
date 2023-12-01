require("toggleterm").setup({
  direction = "horizontal",
  open_mapping = [[<C-\>]],
  hide_numbers = true,
  -- shell = 'fish',
})

vim.keymap.set('n', [[<M-=>]], [[<Cmd>ToggleTerm direction=float<CR>]])
vim.keymap.set('n', [[<M-\>]], [[<Cmd>ToggleTerm direction=horizontal<CR>]])
-- tmux muscle-memory for fullscreening nvim window
vim.keymap.set('n', [[<C-a>z]], [[<Cmd>ToggleTermToggleAll<CR>]])
vim.keymap.set('t', [[<C-a>z]], [[<Cmd>tab split<CR>]])
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])

-- vim.keymap.set('n', '<F12>', [[<Cmd>ToggleTerm<CR>]], { noremap = true, silent = true })
-- vim.keymap.set('t', '<F12>', [[<Cmd>ToggleTerm<CR>]], { noremap = true, silent = true })

-- Custom gitui terminal
local Terminal  = require('toggleterm.terminal').Terminal
local gitui = Terminal:new({
  cmd = 'gitui',
  direction = 'float',
  float_opts = {
    border = "curved",
    width = function() return math.ceil(vim.o.columns * 0.8) end,
    height = function() return math.ceil(vim.o.lines * 0.8) end,
    winblend = 3,
  },
  hidden = true,
})

function _gitui_toggle()
  gitui:toggle()
end

vim.keymap.set('n', '<leader>G', '<cmd>lua _gitui_toggle()<CR>', { noremap = true, silent = true })
