return {
  "nvim-mini/mini.indentscope",
  enabled = true,
  opts = {
    draw = {
      -- Speed up distracting animation
      animation = function()
        return 1
      end,
    },
  },
}
