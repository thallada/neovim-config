-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>H", function()
  Snacks.terminal({ "clx" })
end, { desc = "Toggle clx (console HackerNews) floating terminal" })

vim.keymap.set("n", "<leader>dd", function()
  Snacks.terminal({ "lazydocker" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Toggle lazydocker (console Docker Desktop) floating terminal" })

vim.keymap.set("n", "<leader>B", function()
  Snacks.terminal({ "btop" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Toggle btop (improved console top monitor) floating terminal" })

-- Toggle zoom/maximize current window (<C-w> is the vim window prefix, m for maximize)
vim.keymap.set({ "n", "t" }, "<C-w>m", function()
  Snacks.toggle.zoom():toggle()
end, { desc = "Toggle Zoom" })

-- Allow Cmd+V pasting on mac
if vim.fn.has("mac") == 1 then
  vim.keymap.set("n", "<D-v>", '"+p')
  vim.keymap.set("n", "<D-s-v>", '"+p')
  vim.keymap.set("i", "<D-v>", "<C-r>*")
  vim.keymap.set("i", "<D-s-v>", "<C-r>*")
  vim.keymap.set("t", "<D-v>", '<C-\\><C-n>"+pi')
  vim.keymap.set("t", "<D-s-v>", '<C-\\><C-n>"+pi')
end

local function oxlint_cmd(bufnr)
  local file = vim.api.nvim_buf_get_name(bufnr)
  if file == "" then
    return nil
  end

  local root = vim.fs.dirname(vim.fs.find({ "package.json", ".oxlintrc.json", "oxlint.config.ts" }, {
    path = file,
    upward = true,
  })[1] or "")

  local local_bin = root ~= "" and vim.fs.joinpath(root, "node_modules", ".bin", "oxlint") or nil
  return local_bin and vim.fn.executable(local_bin) == 1 and local_bin or "oxlint"
end

local function oxlint_fix()
  local bufnr = vim.api.nvim_get_current_buf()
  local file = vim.api.nvim_buf_get_name(bufnr)
  if file == "" then
    vim.notify("Oxlint fix requires a file-backed buffer", vim.log.levels.WARN)
    return
  end

  if vim.bo[bufnr].modified then
    vim.cmd.update()
  end

  local cmd = oxlint_cmd(bufnr)
  if not cmd or vim.fn.executable(cmd) ~= 1 then
    vim.notify("oxlint executable not found", vim.log.levels.ERROR)
    return
  end

  local cwd = vim.fs.dirname(vim.fs.find({ "package.json", ".oxlintrc.json", "oxlint.config.ts" }, {
    path = file,
    upward = true,
  })[1] or file)

  vim.system({ cmd, "--fix", "--type-aware", file }, { cwd = cwd, text = true }, function(result)
    vim.schedule(function()
      if result.code == 0 or result.code == 1 then
        vim.cmd.checktime()
        pcall(require("lint").try_lint, "oxlint")
        local level = result.code == 0 and vim.log.levels.INFO or vim.log.levels.WARN
        local msg = result.code == 0 and "Oxlint fix completed" or "Oxlint fix completed with remaining diagnostics"
        vim.notify(msg, level)
      else
        local output = table.concat(vim.tbl_filter(function(v)
          return v and v ~= ""
        end, { result.stdout, result.stderr }), "\n")
        vim.notify(output ~= "" and output or "Oxlint fix failed", vim.log.levels.ERROR)
      end
    end)
  end)
end

vim.api.nvim_create_user_command("OxlintFix", oxlint_fix, { desc = "Fix current file with oxlint" })
vim.keymap.set("n", "<leader>cx", oxlint_fix, { desc = "Oxlint Fix" })
