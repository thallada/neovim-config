require('gitsigns').setup({
  update_debounce = 500,
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, { expr = true, desc = "Jump to next git hunk [C]hange" })

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, { expr = true, desc = "Jump to previous git hunk [C]hange" })

    -- Actions
    map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = "[S]tage git [H]unk" })
    map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = "[R]eset git [H]unk" })
    map('n', '<leader>hS', gs.stage_buffer, { desc = "[S]tage git buffer" })
    map('n', '<leader>hu', gs.undo_stage_hunk, { desc = "[U]ndo git [H]unk" })
    map('n', '<leader>hR', gs.reset_buffer, { desc = "[R]eset git buffer" })
    map('n', '<leader>hp', gs.preview_hunk, { desc = "[P]review git [H]unk" })
    map('n', '<leader>hb', function() gs.blame_line { full = true } end, { desc = "Git [B]lame line" })
    map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = "[T]oggle current line git [B]lame" })
    map('n', '<leader>hd', gs.diffthis, { desc = "Git [D]iff current file with index" })
    map('n', '<leader>hD', function() gs.diffthis('~') end, { desc = "Git [D]iff current file with last commit" })
    map('n', '<leader>td', gs.toggle_deleted, { desc = "[T]oggle showing [D]eleted git hunks" })

    -- Text object
    map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = "Select git [H]unk under cursor" })
  end
})
