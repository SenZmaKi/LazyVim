-- Contains stuff that seem to only work after LazyVim has been setup up

local globals = require("utils.globals")
if globals.terminal.transparent_background then
  -- Set background color to NONE cause some terminals don't add transparency
  -- if the tool explicitly sets a background color
  -- e.g., Windows Terminal, WezTerm
  vim.cmd([[
    highlight Normal guibg=NONE
    highlight NonText guibg=NONE
    highlight SignColumn guibg=NONE
    highlight StatusLine guibg=NONE
    highlight NotifyBackground guibg=#000000
    ]])
end
vim.g.root_spec = { "cwd" }

if globals.os.is_windows then
  -- Change windows compiler to prefer clang
  require("nvim-treesitter.install").compilers = { "clang", "zig", "gcc", "cl", "cc" }
end

