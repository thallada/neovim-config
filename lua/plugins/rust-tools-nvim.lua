local rt = require('rust-tools')
local lsp_on_attach = require('plugins.lsp.on_attach')
local nvim_cmp_capabilities = require('plugins.nvim-cmp').capabilities

local extension_path = vim.env.HOME .. '/vscode-lldb/extension/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

rt.setup({
  tools = {
    runnables = {
      use_telescope = true
    },
  },
  server = {
    capabilities = nvim_cmp_capabilities,
    on_attach = function(client, bufnr)
      lsp_on_attach(client, bufnr)
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      vim.keymap.set("n", "<leader>rc", rt.open_cargo_toml.open_cargo_toml, { buffer = bufnr })
      vim.keymap.set("n", "<leader>rp", rt.parent_module.parent_module, { buffer = bufnr })
      vim.keymap.set("n", "<leader>rm", rt.expand_macro.expand_macro, { buffer = bufnr })
    end,
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        -- enable clippy on save
        checkOnSave = {
          command = "clippy"
        },
      }
    },
  },
  dap = {
    adapter = require('rust-tools.dap').get_codelldb_adapter(
      codelldb_path,
      liblldb_path
    )
  }
})

vim.api.nvim_create_autocmd('BufRead', {
    group = vim.api.nvim_create_augroup('CmpSourceCargo', { clear = true }),
    pattern = 'Cargo.toml',
    callback = function()
        require('cmp').setup.buffer({ sources = { { name = 'crates' } } })
    end,
})
