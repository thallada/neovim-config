-- sqmeow has no completion in scratchpads, so point vim-dadbod-completion (the blink "dadbod"
-- source from the LazyVim sql extra) at the buffer's sqmeow connection by setting b:db.
local dadbod_schemes = { postgres = true, mysql = true }

-- The dadbod URL for a sqmeow connection, or nil when dadbod can't use it.
local function dadbod_url(conn)
  if conn.state ~= "connected" or conn.ssh or conn.url:find("{{", 1, true) then
    return nil
  end
  local prefix, rest = conn.url:match("^%a[%w+.-]*(://[^/?#]*)(.*)$")
  if not prefix or not dadbod_schemes[conn.dialect] then
    return nil
  end
  local path, query = rest:match("^([^?#]*)(.*)$")
  -- A database opened from the drawer's database list shares its parent's URL.
  if conn.database then
    path = "/" .. conn.database
  end
  return conn.dialect .. prefix .. path .. query
end

local function sync_dadbod(buf)
  -- Don't load sqmeow just for this, and leave b:db alone in buffers sqmeow doesn't own.
  if not package.loaded["sqmeow.state"] or vim.bo[buf].filetype ~= "sql" then
    return
  end
  local b = vim.b[buf]
  if not (b.sqmeow_editor or b.sqmeow_connection) or (b.db and b.db ~= b.sqmeow_dadbod_url) then
    return
  end

  local conn = require("sqmeow.api").target(buf)
  local url = conn and dadbod_url(conn)
  if url == b.sqmeow_dadbod_url then
    return
  end
  b.db = url
  b.sqmeow_dadbod_url = url
  if url and vim.fn.exists("*vim_dadbod_completion#fetch") == 1 then
    vim.fn["vim_dadbod_completion#fetch"](buf)
  end
end

return {
  "2giosangmitom/sqmeow.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  version = "*",
  build = function()
    -- Downloads the matching release binary; pass 'curl', 'wget', 'powershell' or 'cargo' to choose.
    require("sqmeow").install()
  end,
  opts = {},
  cmd = "Sqmeow",
  keys = {
    { "<leader>Dd", "<cmd>Sqmeow toggle<cr>", desc = "Toggle" },
    { "<leader>Dc", "<cmd>Sqmeow cancel<cr>", desc = "Cancel" },
    { "<leader>Da", "<cmd>Sqmeow add<cr>", desc = "Add Connection" },
    { "<leader>Ds", "<cmd>Sqmeow scratch<cr>", desc = "New Scratchpad" },
  },
  init = function()
    -- InsertEnter catches connecting, or switching connections with `u`, after the buffer opened.
    vim.api.nvim_create_autocmd({ "BufEnter", "InsertEnter" }, {
      group = vim.api.nvim_create_augroup("sqmeow_dadbod", { clear = true }),
      callback = function(ev)
        sync_dadbod(ev.buf)
      end,
    })
  end,
}
