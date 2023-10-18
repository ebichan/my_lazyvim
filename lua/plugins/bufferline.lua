return {
  "akinsho/bufferline.nvim",
  keys = function()
    return {
      { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", false },
      { "<S-l>", "<cmd>BufferLineCycleNext<cr>", false },
      { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
      { "<S-TAB>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "<TAB>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    }
  end,
}
