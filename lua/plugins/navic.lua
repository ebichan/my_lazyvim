return {
  "SmiteshP/nvim-navic",
  lazy = true,
  init = function()
    vim.g.navic_silence = true
    require("lazyvim.util").lsp.on_attach(function(client, buffer)
      if client.supports_method("textDocument/documentSymbol") then
        require("nvim-navic").attach(client, buffer)
      end
    end)
  end,
  opts = function()
    return {
      separator = " ",
      highlight = false,
      depth_limit = 5,
      icons = require("lazyvim.config").icons.kinds,
      lazy_update_context = true,
    }
  end,
}
