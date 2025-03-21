local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  if col == 0 then
    return false
  end
  local text = vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]
  return text:sub(col, col):match("%s") == nil
end

return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- helper function to check if there's a word before the cursor.

    -- in your blink configuration
    keymap = {
      preset = "enter",
      ["<TAB>"] = { "select_next", "fallback" },
      ["<S-TAB>"] = { "select_prev", "fallback" },
    },
    completion = {
      menu = { enabled = true },
      list = { selection = { preselect = true }, cycle = { from_top = true } },
    },
  },
}
