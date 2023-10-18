return {
  "telescope.nvim",
  keys = {
    { "<leader>fz", "<cmd>Telescope zoxide list<cr>", desc = "find zoxide list" },
    { "<leader>fC", "<cmd>Telescope colorscheme<cr>", desc = "find colorscheme" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "find keymaps" },
    { "<leader>sk", "<cmd>Telescope colorscheme<cr>", desc = "find keymaps" },
    { "<leader>sg", false },
    { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Grep (cwd)" },
  },
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    {
      "jvgrootveld/telescope-zoxide",
      config = function()
        require("telescope").load_extension("zoxide")
      end,
    },
  },
}
