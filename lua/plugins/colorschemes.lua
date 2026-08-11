return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
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
    lazy = true,
    opts = {
      dim_inactive = true,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
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
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      dim_inactive = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha",
      dim_inactive = {
        enabled = true,
      },
    },
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    opts = {
      dim_inactive = true,
    },
  },
  {
    "mcchrish/zenbones.nvim",
    lazy = true,
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
    lazy = true,
    opts = {},
  },
  {
    -- My own colorscheme, aka. thallada/farout.nvim
    "thallada/farout.nvim",
    lazy = true,
    opts = {
      dim_inactive = true,
    },
  },
  {
    "xero/miasma.nvim",
    lazy = true,
  },
  {
    "ptdewey/darkearth-nvim",
    lazy = true,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true,
  },
  {
    "Aejkatappaja/cendre",
    lazy = true,
    opts = {
      -- "hard" | "medium" | "soft", also switchable at runtime with :CendreBackground
      background = "hard",
      dim_inactive = true,
    },
  },
}
