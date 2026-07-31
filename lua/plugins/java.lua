local function first_jdk(candidates)
  for _, path in ipairs(candidates) do
    if vim.fn.executable(path .. "/bin/java") == 1 then
      return path
    end
  end
end

local function find_jdk(patterns)
  local roots = {
    "/Library/Java/JavaVirtualMachines/%s/Contents/Home",
    "/usr/lib/jvm/%s",
    vim.fn.expand("~") .. "/.sdkman/candidates/java/%s",
  }
  local candidates = {}
  for _, pattern in ipairs(patterns) do
    for _, root in ipairs(roots) do
      for _, path in ipairs(vim.fn.glob(root:format(pattern), true, true)) do
        candidates[#candidates + 1] = path
      end
    end
  end
  return first_jdk(candidates)
end

return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      local jdk8 = find_jdk({ "*corretto-8*", "*corretto*1.8*", "*-8-*", "*java-8*", "*1.8*" })
      local jdk21 = find_jdk({ "*temurin-21*", "*-21-*", "*java-21*", "*21*" })

      if jdk21 then
        opts.cmd = opts.cmd or {}
        table.insert(opts.cmd, "--java-executable")
        table.insert(opts.cmd, jdk21 .. "/bin/java")
      end

      local runtimes = {}
      if jdk8 then
        table.insert(runtimes, { name = "JavaSE-1.8", path = jdk8 })
      end
      if jdk21 then
        table.insert(runtimes, { name = "JavaSE-21", path = jdk21 })
      end

      local project_jdk = vim.env.JAVA_HOME or jdk21

      opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
        java = {
          import = {
            gradle = {
              java = { home = project_jdk },
            },
          },
          configuration = {
            runtimes = runtimes,
          },
        },
      })

      return opts
    end,
  },
}
