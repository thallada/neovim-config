-- VSCode-style diff viewer, replaces sindrets/diffview.nvim.
-- The C diff library is downloaded automatically on first use (:CodeDiff install to force).

return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  opts = {
    diff = {
      layout = "side-by-side",
    },
    explorer = {
      -- Match diffview's file panel: tree listing with +/- line stats
      view_mode = "tree",
      line_stats = {
        enabled = true,
      },
    },
    keymaps = {
      view = {
        -- gq closed every diffview panel, keep it alongside the default q
        quit = { "q", "gq" },
        -- Default <leader>b shadows LazyVim's +buffer group, <leader>e/E mirrors
        -- LazyVim's explorer mnemonic instead
        toggle_explorer = "<leader>E",
        focus_explorer = "<leader>e",
        -- Defaults t and gc shadow the t{char} motion and the gc comment
        -- operator in the (editable) modified buffer
        toggle_layout = "gl",
        toggle_compact = "gz",
      },
    },
  },
  keys = {
    { "<leader>gv", "<cmd>CodeDiff<cr>", desc = "Open [g]it Diff[v]iew tab" },
    { "<leader>gl", "<cmd>CodeDiff history %<cr>", desc = "Toggle git log of current file history" },
    { "<leader>gl", ":'<,'>CodeDiff history<cr>", mode = "v", desc = "Toggle git log of selected lines" },
    { "<leader>gL", "<cmd>CodeDiff history<cr>", desc = "Toggle git log of current branch" },
  },
  config = function(_, opts)
    require("codediff").setup(opts)

    -- Snacks' smooth scroll animates the scrolling codediff does to keep the two
    -- panes in sync, so ]c/[c hunk navigation jitters (codediff.nvim#519).
    -- Mute animations while a codediff tab is focused, restore on the way out.
    -- Buffer-local vars can't scope this: the modified pane is the real file
    -- buffer, so muting it would follow the file into other tabs.
    local group = vim.api.nvim_create_augroup("codediff_snacks_animate", { clear = true })
    local diff_tabs = {} ---@type table<integer, true>
    local saved ---@type { value: boolean? }? set only while we are muting

    local function sync_animations()
      if diff_tabs[vim.api.nvim_get_current_tabpage()] then
        -- Wrapped so an unset vim.g (the default, animations on) round-trips as
        -- nil rather than reading as "nothing saved"
        saved = saved or { value = vim.g.snacks_animate }
        vim.g.snacks_animate = false
      elseif saved then
        vim.g.snacks_animate = saved.value
        saved = nil
      end
    end

    vim.api.nvim_create_autocmd("User", {
      group = group,
      pattern = "CodeDiffOpen",
      callback = function(ev)
        diff_tabs[ev.data.tabpage] = true
        sync_animations()
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      group = group,
      pattern = "CodeDiffClose",
      callback = function(ev)
        diff_tabs[ev.data.tabpage] = nil
        -- Fires before the tab is gone, so TabClosed does the actual unmuting
        sync_animations()
      end,
    })

    vim.api.nvim_create_autocmd({ "TabEnter", "TabClosed" }, {
      group = group,
      callback = sync_animations,
    })

    -- The explorer and history panels tag their text (filenames, commit subjects,
    -- padding) with the literal `Normal` group, which carries an opaque bg. Under
    -- a colorscheme with dim_inactive that text keeps Normal's background while
    -- the rest of the window dims to NormalNC, so every row looks highlighted.
    -- Remapping the group to NormalNC while the panel is unfocused makes the text
    -- dim along with the window, the way an ordinary buffer does.
    local panel_ft = { ["codediff-explorer"] = true, ["codediff-history"] = true }

    local function sync_panel_dim()
      local current = vim.api.nvim_get_current_win()
      for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local ok, buf = pcall(vim.api.nvim_win_get_buf, win)
        if ok and panel_ft[vim.bo[buf].filetype] then
          local want = win ~= current and "Normal:NormalNC" or ""
          if vim.wo[win].winhighlight ~= want then
            vim.wo[win].winhighlight = want
          end
        end
      end
    end

    -- Deferred: codediff hops windows with nvim_win_call to refresh panes, which
    -- fires WinEnter with a window that is not the real focus. Scheduling lets
    -- those transient switches unwind before we read the current window.
    local function schedule_panel_dim()
      vim.schedule(sync_panel_dim)
    end

    vim.api.nvim_create_autocmd({ "WinEnter", "WinLeave", "BufWinEnter", "TabEnter" }, {
      group = group,
      callback = schedule_panel_dim,
    })

    vim.api.nvim_create_autocmd("User", {
      group = group,
      pattern = "CodeDiffOpen",
      callback = schedule_panel_dim,
    })
  end,
}
