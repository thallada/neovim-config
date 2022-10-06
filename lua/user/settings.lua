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

-- Leader
vim.g.mapleader = ' '

-- Fonts
vim.opt.guifont = 'Hack:h9.3'

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
vim.g.python3_host_prog = '/usr/bin/python3'

-- Format options
vim.cmd([[set formatoptions+=wantrqlc]])
