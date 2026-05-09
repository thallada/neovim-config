return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      local corretto8 = "/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home"
      local temurin21 = "/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"

      opts.cmd = opts.cmd or {}
      table.insert(opts.cmd, "--java-executable")
      table.insert(opts.cmd, temurin21 .. "/bin/java")

      local project_jdk = vim.env.JAVA_HOME or temurin21

      opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
        java = {
          import = {
            gradle = {
              java = { home = project_jdk },
            },
          },
          configuration = {
            runtimes = {
              { name = "JavaSE-1.8", path = corretto8 },
              { name = "JavaSE-21", path = temurin21 },
            },
          },
        },
      })

      return opts
    end,
  },
}
