return {
  os = {
    is_windows = vim.loop.os_uname().sysname == "Windows_NT",
  },
  plugins = {
    neo_tree = {
      use_trash = true,
    },
  },
  terminal = {
    transparent_background = false,
  },
}
