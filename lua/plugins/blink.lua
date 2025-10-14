return {
  "saghen/blink.cmp",
  dependencies = {
    -- For auto-completion in the avante window
    "Kaiser-Yang/blink-cmp-avante",
    -- For emoji selection
    "moyiz/blink-emoji.nvim",
  },
  opts = {
    completion = {
      trigger = {
        show_in_snippet = false,
      },
    },
    -- use preset again once this is merged: https://github.com/LazyVim/LazyVim/pull/6183
    -- keymap = { preset = "super-tab" },
    keymap = {
      ["<Tab>"] = {
        require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
        require("lazyvim.util").cmp.map({ "snippet_forward", "ai_accept" }),
        "fallback",
      },
    },
    sources = {
      -- Add 'avante' to the list
      default = { "avante", "lsp", "path", "snippets", "buffer", "emoji" },
      providers = {
        avante = {
          module = "blink-cmp-avante",
          name = "Avante",
          opts = {
            -- options for blink-cmp-avante
          },
        },
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
