return {
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
}
