local oxfmt_owned = {
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "json",
  "jsonc",
  "vue",
}

local function oxfmt_with_prettier_fallback()
  return { "oxfmt", "prettier", stop_after_first = true }
end

return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    for _, ft in ipairs(oxfmt_owned) do
      opts.formatters_by_ft[ft] = oxfmt_with_prettier_fallback()
    end

    -- snacks.bigfile uses "bigfile" as the buffer filetype and preserves the
    -- original filetype in 'syntax'. Let Conform format supported big files
    -- without re-enabling Treesitter, LSP, and the other disabled features.
    opts.formatters_by_ft.bigfile = function(bufnr)
      if vim.tbl_contains(oxfmt_owned, vim.bo[bufnr].syntax) then
        return oxfmt_with_prettier_fallback()
      end
      return {}
    end
  end,
}
