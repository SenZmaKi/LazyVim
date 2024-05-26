return {
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
}
