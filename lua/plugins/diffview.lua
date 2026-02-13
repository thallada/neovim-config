-- Custom Diffview auto-refresh config from https://richardgill.org/blog/configuring-neovim-coding-agents
-- Source: https://github.com/richardgill/nix/blob/ebdd8260f770d242db7b6163158cfe9ad9784c41/modules/home-manager/dot-files/nvim/lua/plugins/git-diff_diffview.lua

return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  opts = {
    enhanced_diff_hl = true,
    keymaps = {
      view = {
        { "n", "gq", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
      },
      file_panel = {
        { "n", "gq", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
      },
      file_history_panel = {
        { "n", "gq", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
      },
    },
  },
  keys = {
    { "<leader>gl", ":'<,'>DiffviewFileHistory<cr>", mode = "v", desc = "Toggle git log of selected lines" },
    { "<leader>gL", "<cmd>DiffviewFileHistory<cr>", desc = "Toggle git log of current branch" },
    { "<leader>gl", "<cmd>DiffviewFileHistory %<cr>", desc = "Toggle git log of current file history" },
    { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Open [g]it Diff[v]iew tab" },
  },
  config = function(_, opts)
    require("diffview").setup(opts)

    local watcher = require("custom.directory-watcher")

    local is_git_ignored = function(filepath)
      vim.fn.system("git check-ignore -q " .. vim.fn.shellescape(filepath))
      return vim.v.shell_error == 0
    end

    local update_left_pane = function()
      pcall(function()
        local lib = require("diffview.lib")
        local view = lib.get_current_view()
        if view then
          view:update_files()
        end
      end)
    end

    -- Register handler for file changes in watched directory
    watcher.registerOnChangeHandler("diffview", function(filepath, events)
      local is_in_dot_git_dir = filepath:match("/%.git/") or filepath:match("^%.git/")

      if is_in_dot_git_dir or not is_git_ignored(filepath) then
        vim.notify("[diffview] File changed: " .. vim.fn.fnamemodify(filepath, ":t"), vim.log.levels.INFO)
        update_left_pane()
      end
    end)

    -- Start watching the current working directory
    watcher.setup({ path = vim.fn.getcwd() })

    vim.api.nvim_create_autocmd("FocusGained", {
      callback = update_left_pane,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "DiffviewViewLeave",
      callback = function()
        watcher.stop()
        vim.cmd(":DiffviewClose")
      end,
    })
  end,
}
