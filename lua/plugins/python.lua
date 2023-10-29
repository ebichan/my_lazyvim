return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "black", "isort" })
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    ---@class ConformOpts
    opts = {
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        python = { "ruff_format", "ruff_fix" },
      },
      formatters = {
        ruff_fix = {
          inherit = true,
          args = { "--fix", "--select", "I", "-e", "-n", "--stdin-filename", "$FILENAME", "-" },
        },
      },
    },
  },
}
