return {
  "okuuva/auto-save.nvim",
  lazy = false,
  opts = {
    debounce_delay = 1, -- Minimum detected by rust-analyzer is 1
    trigger_events = {
      defer_save = { "TextChanged", "TextChangedI" },
    },
  },
}
