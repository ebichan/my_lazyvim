return {
  {
    "simrat39/symbols-outline.nvim",
    keys = {
      { "<leader>cs", false },
      { "go", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" },
    },
  },
  {
    "dnlhc/glance.nvim",
    keys = {
      { "gd", "<cmd>Glance definitions<CR>", desc = "Peek definitions" },
      { "gh", "<cmd>Glance references<CR>", desc = "References" },
    },
  },

  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<leader>cr", false }
      keys[#keys + 1] = { "gh", false }
      keys[#keys + 1] = { "gd", false }
      keys[#keys + 1] = { "gr", "<cmd>lua vim.lsp.buf.rename()<cr>" }
      -- keys[#keys + 1] = { "gh", "<cmd>lua vim.lsp.buf.references()<cr>" }
    end,
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          settings = {
            python = {
              analysis = {
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
      },
    },
  },
}
