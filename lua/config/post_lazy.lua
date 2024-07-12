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
-- vim.g.root_spec = { "cwd" }

-- if globals.os.is_windows then
-- Change the compiler for nvim-treesitter to zig cause gcc doesn't work well in in windows system
-- Seems like gcc is back to working again maybe they fixed it but I'll leave this here
-- just incase I  eventually run into issue again
-- require("nvim-treesitter.install").compilers = { "zig" }
-- end
