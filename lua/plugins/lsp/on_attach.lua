-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- thallada: NOTE: copied also in lsp/init.lua since I can't figure out how to import it here
local on_attach = function(_, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<M-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('v', '<leader>a', vim.lsp.buf.range_code_action, bufopts)
  vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
  -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  -- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  -- vim.keymap.set('n', 'gW', vim.lsp.buf.workspace_symbol, bufopts)
  -- vim.keymap.set('n', 'g0', vim.lsp.buf.document_symbol, bufopts)
  vim.keymap.set(
    'n',
    'gr',
    [[<Cmd>lua require('telescope.builtin').lsp_references()<CR>]],
    { noremap = true, silent = true }
  )
  vim.keymap.set(
    'n',
    'gd',
    [[<Cmd>lua require('telescope.builtin').lsp_definitions()<CR>]],
    { noremap = true, silent = true }
  )
  vim.keymap.set(
    'n',
    '<leader>D',
    [[<Cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>]],
    { noremap = true, silent = true }
  )
  vim.keymap.set(
    'n',
    'gW',
    [[<Cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>]],
    { noremap = true, silent = true }
  )
  vim.keymap.set(
    'n',
    'g0',
    [[<Cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]],
    { noremap = true, silent = true }
  )
end

return on_attach
