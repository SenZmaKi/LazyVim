local funcutils = require("utils.functions")
local tabutils = require("utils.tables")
return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          -- Set not show a message if hover is not available
          -- ex: shift+k on Typescript code
          silent = true,
        },
      },
    },
  },
  -- {
  --   "zeioth/garbage-day.nvim",
  --   dependencies = "neovim/nvim-lspconfig",
  --   event = "VeryLazy",
  --   opts = {
  --     -- your options here
  --   },
  -- },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    -- Override build instructions cause make doesn't seem to work on windows
    build = tabutils.os.is_windows
        and "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
      or nil,
  },

  -- Install themes
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "akinsho/horizon.nvim", lazy = true },

  -- LazyVim overrides
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
      { "<leader>ms", "<cmd>MarkdownPreview<cr>", desc = "Start Markdown Preview" },
      { "<leader>mx", "<cmd>MarkdownPreviewStop<cr>", desc = "Stop Markdown Preview" },
      { "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
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
