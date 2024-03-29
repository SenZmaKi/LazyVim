local funcutils = require("utils.functions")
return {

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    -- Override LazyVim\LazyVim build instructions cause make doesn't seem to work on my windows system
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },

  -- Install themes
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "akinsho/horizon.nvim", lazy = true },
  {
    "LazyVim/LazyVim",
    opts = {
      -- Pick random theme
      colorscheme = funcutils.pickRandomValue({ "gruvbox", "horizon" }),
    },
  },

  {
    "okuuva/auto-save.nvim",
    lazy = false,
    opts = {
      execution_message = {
        enabled = false,
      },
      debounce_delay = 1,
      --trigger_events = {
      -- defer_save = {"TextChanged", "TextChangedI"}, -- defer save with a debounce delay of at least 1 is the only save that rust analyzer
      -- seems to detect as an actual save
      -- }
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    keys = {
      { "<leader>mpp", "<cmd>MarkdownPreview<cr>", desc = "Start Markdown Preview" },
      { "<leader>mps", "<cmd>MarkdownPreviewStop<cr>", desc = "Stop Markdown Preview" },
      { "<leader>mpt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
    },
    ft = { "markdown" },
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_auto_close = 0 -- Disable auto closing when leaving markdown file buffer
    end,
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
