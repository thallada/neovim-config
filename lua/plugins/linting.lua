return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      javascript = { "oxlint" },
      typescript = { "oxlint" },
      javascriptreact = { "oxlint" },
      typescriptreact = { "oxlint" },
    },
    linters = {
      oxlint = {
        prepend_args = { "--type-aware" },
      },
      ["markdownlint-cli2"] = {
        prepend_args = {
          "--config",
          vim.fn.stdpath("config") .. "/.markdownlint-cli2.yaml",
        },
      },
    },
  },
}
