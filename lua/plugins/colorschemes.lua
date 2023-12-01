return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
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
  {
    -- My own colorscheme, aka. thallada/farout.nvim
    dir = "~/farout.nvim/",
    opts = {
      dim_inactive = true,
    },
  },
}
