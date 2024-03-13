-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Change the compiler for nvim-treesitter to zig cause gcc doesn't work well in in windows
require("nvim-treesitter.install").compilers = { "zig" }
vim.g.autoformat = false -- Disable autoformat on save, shit's annoying

-- Set background color to NONE cause windows terminal doesn't add transparency
-- if the tool explicitly sets a background color
-- vim.cmd([[
-- highlight Normal guibg=NONE
-- highlight NonText guibg=NONE
-- highlight SignColumn guibg=NONE
-- highlight StatusLine guibg=NONE
-- highlight NotifyBackground guibg=#000000
-- ]])

-- Neovide configu
if vim.g.neovide then
  vim.o.guifont = "Hurmit Nerd Font:h10" -- Set font explicitly otherwise neovide will use default font
  -- vim.g.neovide_transparency = 0.8 -- Change this to adjust transparency
  -- vim.g.transparency = 0.8
end
