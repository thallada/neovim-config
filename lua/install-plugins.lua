local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('plugins.lsp')
    end,
  }
  use {
    'j-hui/fidget.nvim',
    config = function()
      require('plugins.fidget-nvim')
    end,
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
    config = function()
      require('plugins.nvim-cmp')
    end,
  }
  use {
    'Saecki/crates.nvim',
    event = { "BufRead Cargo.toml" },
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugins.crates-nvim')
    end,
  }
  use {
    'petertriho/cmp-git',
    requires = 'nvim-lua/plenary.nvim',
  }
  use {
    'williamboman/mason.nvim',
    config = function()
      require('plugins.mason-nvim')
    end,
  }
  use {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('plugins.mason-lspconfig-nvim')
    end,
  }
  use {
    'rmagatti/goto-preview',
    config = function()
      require('plugins.goto-preview-nvim')
    end,
  }
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use {
    'folke/trouble.nvim',
    config = function()
      require('plugins.trouble-nvim')
    end,
  }
  use {
    'mfussenegger/nvim-dap',
    config = function()
      require('plugins.nvim-dap')
    end,
  }
  use {
    'theHamsta/nvim-dap-virtual-text',
    config = function()
      require('plugins.nvim-dap-virtual-text')
    end,
  }
  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      'mfussenegger/nvim-dap',
    },
    config = function()
      require('plugins.nvim-dap-ui')
    end,
  }
  use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim',
    config = function()
      require('plugins.nvim-lightbulb')
    end,
  }
  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = function()
      require('plugins.nvim-treesitter')
    end,
  }
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
  }
  use {
    'theHamsta/nvim-treesitter-pairs',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
  }
  use {
    'windwp/nvim-ts-autotag',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
  }
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('plugins.nvim-autopairs')
    end,
  }
  use {
    'nvim-treesitter/nvim-treesitter-refactor',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
  }
  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
  }
  use {
    'numToStr/Comment.nvim',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('plugins.comment-nvim')
    end,
  }
  use {
    'nvim-treesitter/nvim-treesitter-context',
    requires = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('plugins.nvim-treesitter-context')
    end,
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugins.telescope')
    end,
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    requires = {
      'nvim-telescope/telescope.nvim',
    },
  }
  use {
    'nvim-telescope/telescope-symbols.nvim',
    requires = {
      'nvim-telescope/telescope.nvim',
    },
  }
  use {
    'nvim-telescope/telescope-github.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
  }
  use {
    'LinArcX/telescope-env.nvim',
    requires = {
      'nvim-telescope/telescope.nvim',
    },
  }
  use {
    'xiyaowong/telescope-emoji.nvim',
    requires = {
      'nvim-telescope/telescope.nvim',
    },
  }
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('plugins.gruvbox')
    end,
  }
  use { 'shaunsingh/oxocarbon.nvim', run = './install.sh' }
  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require('plugins.toggleterm-nvim')
    end,
  }
  use {
    'ethanholz/nvim-lastplace',
    config = function()
      require('plugins.lastplace-nvim')
    end,
  }
  use {
    'nacro90/numb.nvim',
    config = function()
      require('plugins.numb-nvim')
    end,
  }
  use {
    'tpope/vim-fugitive',
    config = function()
      require('plugins.fugitive')
    end,
  }
  use 'tpope/vim-rhubarb'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('plugins.gitsigns')
    end,
  }
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  use 'kyazdani42/nvim-web-devicons'
  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require('octo').setup()
    end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()
      require('plugins.nvim-tree')
    end
  }
  use {
    'kylechui/nvim-surround',
    config = function()
      require('plugins.surround-nvim')
    end,
  }
  use 'dstein64/vim-startuptime'
  use {
    'nvim-neotest/neotest',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim',
    },
    config = function()
      require('plugins.neotest')
    end,
  }
  use 'rouge8/neotest-rust'
  use {
    'simrat39/rust-tools.nvim',
    requires = {
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('plugins.rust-tools-nvim')
    end,
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('plugins.bufferline-nvim')
    end,
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = function()
      require('plugins.lualine-nvim')
    end,
  }
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-repeat'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-sleuth'
  use {
    'simnalamburt/vim-mundo',
    config = function()
      require('plugins.vim-mundo')
    end,
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugins.indent-blankline-nvim')
    end,
  }
  use {
    'ktunprasert/gui-font-resize.nvim',
    config = function()
      require('plugins.gui-font-resize-nvim')
    end,
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
