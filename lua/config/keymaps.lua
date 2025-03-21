-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

vim.keymap.set("i", "<C-\\>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : horizontal" })
vim.keymap.set("t", "<C-\\>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : horizontal" })
vim.keymap.set("n", "<C-\\>", "<Cmd>ToggleTerm direction=horizontal<CR>", { desc = "terminal : horizontal" })

vim.keymap.set("i", "<A-d>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : float" })
vim.keymap.set("t", "<A-d>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : float" })
vim.keymap.set("n", "<A-d>", "<Cmd>ToggleTerm direction=float<CR>", { desc = "terminal : float" })

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

map("n", "]g", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[g", diagnostic_goto(false), { desc = "Prev Diagnostic" })

-- skkeleton
-- vim.keymap.set("i", "<C-j>", vim.fn["call skkeleton#handle('enable', {})<CR>"])
