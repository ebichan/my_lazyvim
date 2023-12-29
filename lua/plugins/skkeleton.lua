return {
  {
    "vim-skk/skkeleton",
    event = { "InsertEnter" },
    dependencies = { "vim-denops/denops.vim" },
    config = function()
      vim.keymap.set("i", "<C-j>", "<Plug>(skkeleton-toggle)", { remap = true })
      vim.fn["skkeleton#config"]({ globalJisyo = "~/.skk/SKK-JISYO.L" })
    end,
    -- vim.fn["call skkeleton#config"]({
    --   globalJisyo = "~/.skk/SKK-JISYO.L",
    -- }),
  },
}
