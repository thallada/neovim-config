local presets = require("blink.cmp.keymap.presets")

return {
  "saghen/blink.cmp",
  dependencies = {
    -- For auto-completion in the avante window
    "Kaiser-Yang/blink-cmp-avante",
  },
  opts = {
    completion = {
      trigger = {
        show_in_snippet = false,
      },
    },
    -- This started to break and idk why, so doing it manually
    -- keymap = { preset = "super-tab" },
    keymap = presets.get("super-tab"),
    sources = {
      -- Add 'avante' to the list
      default = { "avante", "lsp", "path", "snippets", "buffer" },
      providers = {
        avante = {
          module = "blink-cmp-avante",
          name = "Avante",
          opts = {
            -- options for blink-cmp-avante
          },
        },
      },
    },
  },
}
