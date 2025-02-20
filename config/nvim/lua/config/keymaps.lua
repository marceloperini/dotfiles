-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- move.nvim
local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set("n", "<C-j>", ":MoveLine(1)<CR>", opts)
vim.keymap.set("n", "<C-k>", ":MoveLine(-1)<CR>", opts)
vim.keymap.set("n", "<C-h>", ":MoveHChar(-1)<CR>", opts)
vim.keymap.set("n", "<C-l>", ":MoveHChar(1)<CR>", opts)

-- Visual-mode commands
vim.keymap.set("v", "<C-j>", ":MoveBlock(1)<CR>", opts)
vim.keymap.set("v", "<C-k>", ":MoveBlock(-1)<CR>", opts)
vim.keymap.set("v", "<C-h>", ":MoveHBlock(-1)<CR>", opts)
vim.keymap.set("v", "<C-l>", ":MoveHBlock(1)<CR>", opts)

vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })

vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make split windows equal width" })
vim.keymap.set("n", "<leader>wx", ":close<CR>", { desc = "Close current split window" })

-- Allow to indent to left or right without exit the Visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
