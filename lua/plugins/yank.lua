-- Load custom yank keymaps for copying file paths + visual selections
-- See lua/custom/yank.lua for implementation
return {
  dir = vim.fn.stdpath("config"),
  name = "custom-yank",
  config = function()
    require("custom.yank")
  end,
}
