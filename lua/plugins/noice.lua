return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      hover = {
        -- Set to not show a message if hover is not available
        -- for instance when using two LSPs but one LSP doesn't have hover info
        silent = true,
      },
    },
  },
}
