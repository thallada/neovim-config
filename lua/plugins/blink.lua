return {
  "saghen/blink.cmp",
  dependencies = {
    -- For emoji selection
    "moyiz/blink-emoji.nvim",
  },
  opts = {
    completion = {
      trigger = {
        show_in_snippet = false,
      },
    },
    keymap = { preset = "super-tab" },
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "emoji" },
      providers = {
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 15, -- Tune by preference
          opts = {
            insert = true, -- Insert emoji (default) or complete its name
            ---@type string|table|fun():table
            trigger = function()
              return { ":" }
            end,
          },
        },
      },
    },
  },
}
