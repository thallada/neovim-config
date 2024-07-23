return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  opts = {
    api_key_cmd = "cat " .. os.getenv("HOME") .. "/.config/.openai-api-key",
    popup_input = {
      submit = "<C-s>",
    },
    openai_params = {
      model = "gpt-4o",
    },
    openai_edit_params = {
      model = "gpt-4o",
    },
  },
  keys = {
    { "<leader>kc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
    { "<leader>ke", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction", mode = { "n", "v" } },
    { "<leader>kg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction", mode = { "n", "v" } },
    { "<leader>kt", "<cmd>ChatGPTRun translate<CR>", desc = "Translate", mode = { "n", "v" } },
    { "<leader>kk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords", mode = { "n", "v" } },
    { "<leader>kd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring", mode = { "n", "v" } },
    { "<leader>ka", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests", mode = { "n", "v" } },
    { "<leader>ko", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code", mode = { "n", "v" } },
    { "<leader>ks", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize", mode = { "n", "v" } },
    { "<leader>kf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs", mode = { "n", "v" } },
    { "<leader>kx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code", mode = { "n", "v" } },
    {
      "<leader>kl",
      "<cmd>ChatGPTRun code_readability_analysis<CR>",
      desc = "Code Readability Analysis",
      mode = { "n", "v" },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
    {
      "folke/which-key.nvim",
      optional = true,
      opts = {
        spec = {
          { "<leader>k", group = "ChatGPT" },
        },
      },
    },
  },
}
