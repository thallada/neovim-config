-- Nubmer column
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = 'yes' -- remove jitter

-- Wrapping / indenting
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop=2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.textwidth = 120
vim.opt.colorcolumn = '+1'

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Scrolling
vim.opt.scrolloff = 3
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 1

-- Mouse
vim.opt.mouse = 'a'

-- Window decorations
vim.opt.title = true
vim.opt.titlestring="%{substitute(getcwd(),$HOME,'~','')} - Neovide"

-- Leader
vim.g.mapleader = ' '

-- Fonts
vim.opt.guifont = 'Berkeley Mono Variable:h12'

-- Swap / backup / undo
vim.opt.undofile = true

-- Shell (may speed up nvim)
vim.opt.shell = '/bin/bash'

-- Rendering
vim.opt.lazyredraw = true

-- Folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = vim.call('nvim_treesitter#foldexpr')

-- Completion settings
-- " Set completeopt to have a better completion experience
-- " :help completeopt
-- " menuone: popup even 'hen there's only one match
-- " noinsert: Do not insert text until a selection is made
-- " noselect: Do not select, force user to select one from the menu
vim.opt.completeopt = 'menuone,noinsert,noselect'

-- Avoid showing extra messages when using completion
vim.o.shortmess = vim.o.shortmess .. 'c'

-- Python
vim.g.python3_host_prog = vim.fn.has('macunix') and '/opt/homebrew/bin/python3' or '/usr/bin/python3'

--Shell
vim.opt.shell = 'fish'

-- Format options
vim.cmd([[set formatoptions+=wantrqlc]])

-- Neovide settings
vim.g.neovide_scroll_animation_length = 0.3 -- default: 0.3
vim.g.neovide_cursor_animation_length = 0.06
vim.g.neovide_cursor_trail_size = 0.2 -- default: 0.8

vim.api.nvim_set_hl(0, 'OctoEditable', { bg = '#313131' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
  command = 'set filetype=ruby',
  pattern = {'Podfile', 'Fastfile', 'Matchfile', 'Pluginfile', 'Appfile', 'Deliverfile'},
})

vim.opt.fillchars:append { diff = "╱" }

vim.api.nvim_command([[colorscheme gruvbox]])

vim.api.nvim_create_user_command(
  'Browse',
  function (opts)
    vim.fn.system { 'open', opts.fargs[1] }
  end,
  { nargs = 1 }
)
