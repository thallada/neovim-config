local trouble = require('trouble.providers.telescope')
local telescope = require('telescope')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<c-t>'] = trouble.open_with_trouble,
        ['<c-h>'] = 'which_key',
      },
      n = {
        ['<c-t>'] = trouble.open_with_trouble,
        ['<c-h>'] = 'which_key',
      },
    },
  },
  extensions = {
    project = {
      theme = 'dropdown',
    }
  }
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('gh')
require('telescope').load_extension('env')
require('telescope').load_extension('emoji')
require('telescope').load_extension('ui-select')
require('telescope').load_extension('project')

vim.keymap.set(
  'n',
  '<leader><tab>',
  [[<Cmd>lua require('telescope.builtin').git_files()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>f.',
  [[<Cmd>lua require('telescope.builtin').git_files({ no_ignore = true })<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '_',
  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>_',
  [[<Cmd>lua require('telescope.builtin').live_grep({ search_dirs = { vim.fn.expand('%:p:h') } })<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>8',
  [[<Cmd>lua require('telescope.builtin').grep_string()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>3',
  [[<Cmd>lua require('telescope.builtin').grep_string()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  "<leader>fd",
  [[<Cmd>lua require('telescope.builtin').find_files({cwd=require('telescope.utils').buffer_dir()})<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>fb',
  [[<Cmd>lua require('telescope.builtin').buffers()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>fh',
  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>ft',
  [[<Cmd>lua require('telescope.builtin').treesitter()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>fr',
  [[<Cmd>lua require('telescope.builtin').resume()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<leader>fs',
  [[<Cmd>lua require('telescope.builtin').spell_suggest()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>fgc',
  [[<Cmd>lua require('telescope.builtin').git_commits()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  '<Leader>fga',
  [[<Cmd>lua require('telescope.builtin').git_bcommits()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>fgb',
  [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>fe',
  [[<Cmd>Telescope emoji<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>f"',
  [[<Cmd>lua require('telescope.builtin').registers()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>fm',
  [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>ff',
  [[<Cmd>lua require('telescope.builtin').builtin()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<Leader>fl',
  [[<Cmd>lua require('telescope.builtin').reloader()<CR>]],
  { noremap = true, silent = true }
)
vim.keymap.set(
  'n',
  '<C-p>',
  [[<Cmd>lua require('telescope').extensions.project.project({ display_type = 'full' })<CR>]],
  { noremap = true, silent = true }
)
