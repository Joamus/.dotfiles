-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
--  Makes jumping pages and half pages less dizzying
map("n", "<C-d>", "<C-d>zz", {})
map("n", "<C-u>", "<C-u>zz", {})
map("n", "<C-f>", "<C-f>zz", {})
map("n", "<C-b>", "<C-b>zz", {})

-- Allow moving multiple lines --
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- Unmap overrides of default keybindings by LazyVim
vim.keymap.del("n", "H")
vim.keymap.del("n", "L")
