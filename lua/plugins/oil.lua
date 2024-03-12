return {
  "stevearc/oil.nvim",
  opts = {
    -- remapping is not working, so redefine defaults with C-l and C-h swapped for C-f and C-i
    -- see: https://github.com/stevearc/oil.nvim/issues/217
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-s>"] = "actions.select_vsplit",
      ["<C-i>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-f>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", "<cmd>Oil<cr>", { desc = "Open parent directory in current buffer" } },
  },
}
