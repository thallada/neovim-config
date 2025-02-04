return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  opts = {
    text = {
      editing = "Editing a ${filetype} file",
      viewing = "Viewing a ${filetype} file",
    },
    variables = true,
  },
}
