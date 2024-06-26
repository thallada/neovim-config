return {
  "nvim-neotest/neotest",
  dependencies = {
    "adrigzr/neotest-mocha",
  },
  opts = function()
    return {
      adapters = {
        ["neotest-mocha"] = {
          command = "npx ts-mocha --config ./test-integration/.mocharc.json -r tsconfig-paths/register -r ./test/config-mutation-setup.ts -r ./test-integration/hooks.ts",
          command_args = function(context)
            -- The context contains:
            --   results_path: The file that json results are written to
            --   test_name_pattern: The generated pattern for the test
            --   path: The path to the test file
            --
            -- It should return a string array of arguments
            --
            -- Not specifying 'command_args' will use the defaults below
            local relative_path = vim.fn.fnamemodify(context.path, ":.")
            return {
              "--full-trace",
              "--reporter=json",
              "--reporter-options=output=" .. context.results_path,
              "--grep=" .. context.test_name_pattern,
              relative_path,
            }
          end,
          env = { CI = true, NODE_OPTIONS = "--trace-warnings --max-old-space-size=8192", NODE_ENV = "test" },
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
      },
      consumers = {
        overseer = require("neotest.consumers.overseer"),
      },
    }
  end,
}
