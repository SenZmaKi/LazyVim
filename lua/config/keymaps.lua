-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set_keymap = vim.keymap.set

set_keymap("n", "<C-k>", "5k", { desc = "Move up up 5 lines" })
set_keymap("i", "jk", "<Esc>", { desc = "Go into normal mode" })
set_keymap("n", "<C-j>", "5j", { desc = "Move up down 5 lines" })
set_keymap("i", "<C-j>", "<Esc>o", { desc = "Create a new line below and move into it" })
set_keymap("i", "<C-l>", "<Esc>la", { desc = "Move forward one character" })
set_keymap("i", "<C-h>", "<Esc>ha", { desc = "Move back one character" })
set_keymap("i", "<C-w>", "<Esc><C-w>w", { desc = "Switch windows" })
set_keymap("i", "<C-w>w", "<Esc><C-w>w", { desc = "Switch windows" })
set_keymap("i", "<C-w>k", "<Esc><C-w>k", { desc = "Go to the up window" })
set_keymap("i", "<C-w>j", "<Esc><C-w>j", { desc = "Go to the down window" })
set_keymap("i", "<C-w>l", "<Esc><C-w>l", { desc = "Go to the right window" })
set_keymap("i", "<C-w>h", "<Esc><C-w>h", { desc = "Go to the left window" })
--WIP
set_keymap("i", "<C-_>", "<Esc><C-_>", { desc = "Open or close terminal" })
set_keymap("i", "<C-`>", "<Esc><C-_>", { desc = "Open or close terminal" })
set_keymap("n", "<C-p>", "<C-_>", { desc = "Open or close terminal" })

set_keymap(
  "n",
  "<leader>xe",
  "<cmd>lua vim.diagnostic.open_float()<CR>",
  { desc = "Show error diagnostics for the current line" }
)

set_keymap("n", "<leader>rl", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
