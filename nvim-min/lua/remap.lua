vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map("n", '<C-d>', '<C-d>zz', {})
map('n', '<C-u>', '<C-u>zz', {})
map('n', '<C-f>', '<C-f>zz', {})
map('n', '<C-b>', '<C-b>zz', {})

-- Allow moving multiple lines --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Navigate through buffers --
map("n", "[b", ":bprevious<CR>", {})
map("n", "]b", ":bnext<CR>", {})
map("n", "[B", ":bfirst<CR>", {})
map("n", "]B", ":blast<CR>", {})
