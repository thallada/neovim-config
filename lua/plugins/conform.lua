local oxfmt_owned = {
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "json",
  "jsonc",
  "vue",
}

return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    for _, ft in ipairs(oxfmt_owned) do
      local formatters = opts.formatters_by_ft[ft]
      if formatters then
        opts.formatters_by_ft[ft] = vim.tbl_filter(function(formatter)
          return formatter ~= "prettier"
        end, formatters)
      end
    end
  end,
}
