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
require('telescope').load_extension('session-lens')

vim.keymap.set(
  'n',
  '<leader><tab>',
  [[<Cmd>lua require('telescope.builtin').git_files({ show_untracked = true })<CR>]],
  { noremap = true, silent = true, desc = "Find git files" }
)
vim.keymap.set(
  'n',
  '<leader>f.',
  [[<Cmd>lua require('telescope.builtin').git_files({ no_ignore = true })<CR>]],
  { noremap = true, silent = true, desc = "[F]ind ALL git files including ignored [.]" }
)
vim.keymap.set(
  'n',
  '_',
  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]],
  { noremap = true, silent = true, desc = "Search by live grep" }
)
vim.keymap.set(
  'n',
  '<leader>_',
  [[<Cmd>lua require('telescope.builtin').live_grep({ search_dirs = { vim.fn.expand('%:p:h') } })<CR>]],
  { noremap = true, silent = true, desc = "Search by live grep in current (present) working directory" }
)
vim.keymap.set(
  'n',
  '<leader>8',
  [[<Cmd>lua require('telescope.builtin').grep_string()<CR>]],
  { noremap = true, silent = true, desc = "Search by grep" }
)
vim.keymap.set(
  'n',
  '<leader>3',
  [[<Cmd>lua require('telescope.builtin').grep_string()<CR>]],
  { noremap = true, silent = true, desc = "Search by grep" }
)
vim.keymap.set(
  "n",
  "<leader>fd",
  [[<Cmd>lua require('telescope.builtin').find_files({cwd=require('telescope.utils').buffer_dir()})<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [D]irectories" }
)
vim.keymap.set(
  'n',
  '<leader>fb',
  [[<Cmd>lua require('telescope.builtin').buffers()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [B]uffers" }
)
vim.keymap.set(
  'n',
  '<leader>fh',
  [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [T]ags" }
)
vim.keymap.set(
  'n',
  '<leader>ft',
  [[<Cmd>lua require('telescope.builtin').treesitter()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [T]reesitter objects" }
)
vim.keymap.set(
  'n',
  '<leader>fr',
  [[<Cmd>lua require('telescope.builtin').resume()<CR>]],
  { noremap = true, silent = true, desc = "[R]esume last [F]ind" }
)
vim.keymap.set(
  'n',
  '<leader>fs',
  [[<Cmd>lua require('telescope.builtin').spell_suggest()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [S]pelling suggestion" }
)
vim.keymap.set(
  'n',
  '<Leader>fgc',
  [[<Cmd>lua require('telescope.builtin').git_commits()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [G]it [C]ommits" }
)
vim.keymap.set(
  "n",
  '<Leader>fga',
  [[<Cmd>lua require('telescope.builtin').git_bcommits()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [G]it commits for current buffer" }
)
vim.keymap.set(
  'n',
  '<Leader>fgb',
  [[<Cmd>lua require('telescope.builtin').git_branches()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [G]it [B]ranches" }
)
vim.keymap.set(
  'n',
  '<Leader>fe',
  [[<Cmd>Telescope emoji<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [E]moji" }
)
vim.keymap.set(
  'n',
  '<Leader>f"',
  [[<Cmd>lua require('telescope.builtin').registers()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind registers [\"]" }
)
vim.keymap.set(
  'n',
  '<Leader>fm',
  [[<Cmd>lua require('telescope.builtin').keymaps()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind key [M]appings" }
)
vim.keymap.set(
  'n',
  '<Leader>ff',
  [[<Cmd>lua require('telescope.builtin').builtin()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind telescope [F]inders" }
)
vim.keymap.set(
  'n',
  '<Leader>fl',
  [[<Cmd>lua require('telescope.builtin').reloader()<CR>]],
  { noremap = true, silent = true, desc = "[F]ind [L]ua module to reload" }
)
vim.keymap.set(
  'n',
  '<C-p>',
  [[<Cmd>lua require('telescope').extensions.project.project({ display_type = 'full' })<CR>]],
  { noremap = true, silent = true, desc = "Find projects" }
)
vim.keymap.set(
  'n',
  '<leader>`',
  [[<Cmd>lua require('session-lens').search_session()<CR>]],
  { noremap = true, silent = true, desc = "Find sessions" }
)
