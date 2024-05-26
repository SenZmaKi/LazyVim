local funcutils = require("utils.functions")
return {
  { "ellisonleao/gruvbox.nvim" },
  { "akinsho/horizon.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      -- Pick random theme
      colorscheme = funcutils.pick_random_value({ "gruvbox" }),
    },
  },
}
