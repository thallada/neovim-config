require('nvim-tree').setup({
  hijack_netrw = true,
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  view = {
    mappings = {
      list = {
        { key = "<CR>", action = "edit_in_place" },
        { key = "<C-i>", action = "toggle_file_info" },
      }
    }
  },
  remove_keymaps = {
    '<C-k>'
  },
})

local function toggle_replace()
  local view = require('nvim-tree.view')
  if view.is_visible() then
      view.close()
  else
    require('nvim-tree').open_replacing_current_buffer()
  end
end

vim.keymap.set('n', '-', function() toggle_replace() end, { noremap = true, silent = true })
