-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set_keymap = vim.keymap.set

set_keymap("n", "<C-k>", "5k", { desc = "Move up 5 lines" })
set_keymap("n", "<C-j>", "5j", { desc = "Move down 5 lines" })
set_keymap("i", "jk", "<Esc>", { desc = "Go into normal mode" })
-- My favourite mapping
set_keymap("i", "<C-j>", "<Esc>o", { desc = "Create a new line below and move into it" })
set_keymap("i", "<C-l>", "<Esc>la", { desc = "Move forward one character" })
set_keymap("i", "<C-h>", "<Esc>ha", { desc = "Move back one character" })

set_keymap("n", "<Leader>lx", "<CMD>LazyExtras<CR>", { desc = "Lazy extras" })
vim.keymap.del("n", "<Leader>l")
set_keymap("n", "<Leader>ll", "<CMD>Lazy<CR>", { desc = "Lazy" })
set_keymap("n", "<Leader>db", "<CMD>Dashboard<CR>", { desc = "Dashboard" })

-- floating terminal
-- local lazyterm = function() LazyVim.terminal(nil, { cwd = LazyVim.root() }) end
-- set_keymap("i", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })
-- set_keymap("i", "<c-_>", lazyterm, { desc = "which_key_ignore" })

set_keymap("n", "<Leader>rl", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
