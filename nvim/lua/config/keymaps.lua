-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n" }, "<leader>w", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set({ "n" }, "<leader>%", "<C-W>v", { desc = "Split window right" })
vim.keymap.set({ "n" }, '<leader>"', "<C-W>s", { desc = "Split window below" })
