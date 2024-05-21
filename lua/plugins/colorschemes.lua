return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "hard",
      palette_overrides = {
        dark0_hard = "#131516",
        dark1 = "#242424",
      },
      dim_inactive = true,
      overrides = {
        GruvboxAquaSign = { bg = "NONE" },
        GruvboxBlueSign = { bg = "NONE" },
        GruvboxGreenSign = { bg = "NONE" },
        GruvboxOrangeSign = { bg = "NONE" },
        GruvboxPurpleSign = { bg = "NONE" },
        GruvboxRedSign = { bg = "NONE" },
        GruvboxYellowSign = { bg = "NONE" },
        SignColumn = { bg = "NONE" },
        FoldColumn = { bg = "NONE" },
      },
    },
  },
  {
    "arturgoms/moonbow.nvim",
    opts = {
      dim_inactive = true,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      dimInactive = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
          dragon = {
            ui = {
              bg_dim = "#1e1d1d",
              bg = "#12120f",
              bg_p2 = "#282727",
            },
          },
          wave = {
            ui = {
              bg_dim = "#20202D",
              bg = "#181820",
              bg_p2 = "#2A2A37",
            },
          },
        },
      },
    },
  },
  { "kdheepak/monochrome.nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      dim_inactive = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      dim_inactive = {
        enabled = true,
      },
    },
  },
  { "LunarVim/onedarker.nvim" },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      dim_inactive = true,
    },
  },
  {
    "mcchrish/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      local opts = {
        lightness = "bright",
        darkness = "stark",
        lighten_noncurrent_window = true,
      }
      vim.g.zenbones = opts
      vim.g.rosebones = opts
      vim.g.tokyobones = opts
      vim.g.neobones = opts
      vim.g.duckbones = opts
      vim.g.kanagawabones = opts
    end,
  },
  {
    "HoNamDuong/hybrid.nvim",
    lazy = false,
    opts = {},
  },
  {
    -- My own colorscheme, aka. thallada/farout.nvim
    dir = "~/farout.nvim/",
    opts = {
      dim_inactive = true,
    },
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ptdewey/darkearth-nvim",
    priority = 1000,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
}
