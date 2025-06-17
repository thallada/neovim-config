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
