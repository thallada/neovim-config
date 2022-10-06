-- Dependencies needed for this config:
-- ripgrep	- https://github.com/BurntSushi/ripgrep
-- fd 		- https://github.com/sharkdp/fd
-- git 		- https://git-scm.com/
-- bat 		- https://github.com/sharkdp/bat

-- disables netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- speed up loading Lua modules
if pcall(require, 'impatient') then
  require('impatient')
else
  print('Failed to load impatient.')
end

-- require('plenary.reload').reload_module('plugins')
require('install-plugins')

-- require('plenary.reload').reload_module('user.settings')
-- require('plenary.reload').reload_module('user.keymaps')
require('user.settings')
require('user.keymaps')
