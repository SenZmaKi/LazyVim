-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local globals = require("utils.globals")
vim.g.autoformat = false -- Disable autoformat on save, it's annoying
vim.g.root_spec = { "cwd" }
if globals.os.is_windows then
  -- Change the compiler for nvim-treesitter to zig cause gcc doesn't work well in in windows system
  -- Seems like gcc is back to working again maybe they fixed it but I'll leave this here
  -- just incase I  eventually run into issue again
  -- require("nvim-treesitter.install").compilers = { "zig" }

  if globals.terminal.transparent_background then
    -- Set background color to NONE cause windows terminal doesn't add transparency
    -- if the tool explicitly sets a background color
    vim.cmd([[
    highlight Normal guibg=NONE
    highlight NonText guibg=NONE
    highlight SignColumn guibg=NONE
    highlight StatusLine guibg=NONE
    highlight NotifyBackground guibg=#000000
    ]])
  end
end
-- Neovide configuration
if vim.g.neovide then
  vim.o.guifont = "Hurmit Nerd Font:h10" -- Set font explicitly otherwise neovide will use default font
  -- vim.g.neovide_transparency = 0.8 -- Change this to adjust transparency, it's pretty janky
  -- vim.g.transparency = 0.8
end
