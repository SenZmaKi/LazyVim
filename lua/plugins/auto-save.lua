return {
  "okuuva/auto-save.nvim",
  lazy = false,
  opts = {
    condition = function(buf)
      local filetype = vim.fn.getbufvar(buf, "&filetype")

      if vim.list_contains({ "octo" }, filetype) then
        return false
      end
      return true
    end,
    debounce_delay = 1, -- Minimum detected by rust-analyzer is 1
    trigger_events = {
      defer_save = { "TextChanged", "TextChangedI" },
    },
  },
}
