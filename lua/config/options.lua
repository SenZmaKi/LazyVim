-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

require("config.filetypes")

vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.autoformat = false -- Disable autoformat on save, it's annoying
-- vim.g.root_spec = { "cwd" }

-- Neovide configuration
if vim.g.neovide then
  vim.o.guifont = "Hurmit Nerd Font:h10" -- Set font explicitly otherwise neovide will use default font
  -- vim.g.neovide_transparency = 0.8 -- Change this to adjust transparency, it's pretty janky
  -- vim.g.transparency = 0.8
end
