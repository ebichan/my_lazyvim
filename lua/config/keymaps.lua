-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-\\>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : horizontal" })
vim.keymap.set("t", "<C-\\>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : horizontal" })
vim.keymap.set("n", "<C-\\>", "<Cmd>ToggleTerm direction=horizontal<CR>", { desc = "terminal : horizontal" })

vim.keymap.set("i", "<A-d>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : float" })
vim.keymap.set("t", "<A-d>", "<Cmd>ToggleTerm<CR>", { desc = "terminal : float" })
vim.keymap.set("n", "<A-d>", "<Cmd>ToggleTerm direction=float<CR>", { desc = "terminal : float" })
