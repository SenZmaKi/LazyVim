return {

  {
    "andweeb/presence.nvim", -- Discord rich presence
    event = "VeryLazy",
    -- The setup config table shows all available config options with their default values:
    opts = {
      -- General options
      auto_update = true, -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
      neovim_image_text = "The Strongest Programmer of Today", -- Text displayed when hovered over the Neovim image
      main_image = "file", -- Main image display (either "neovim" or "file")
      client_id = "793271441293967371", -- Use your own Discord application client id (not recommended)
      log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
      debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
      enable_line_number = false, -- Displays the current line number instead of the current project
      blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      buttons = true, -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
      file_assets = {
        py = {
          "Python",
          "https://preview.redd.it/its-happening-v0-0ubxoqc9xv5c1.jpg?width=1080&crop=smart&auto=webp&s=38266e09899f139be222cfe841f19be918c39a68", -- Gojo strong return
        },
        lua = {
          "Lua",
          "https://preview.redd.it/does-jogo-have-what-it-takes-v0-0wy1f4881kyb1.png?width=1080&crop=smart&auto=webp&s=44f434b5d1aa9f62d8927a7eb219e73839880357", -- Save the curse society jogoat
        },
        js = {
          "JavaScript",
          "https://preview.redd.it/the-agenda-is-back-v0-c97945bgc26c1.jpg?width=1080&crop=smart&auto=webp&s=83d58dcadd95322ed6c630bba7be3ca0c6536d50", -- Save me Gege Im a fraud
        },
        ts = {
          "Typescript",
          "https://preview.redd.it/the-agenda-is-back-v0-c97945bgc26c1.jpg?width=1080&crop=smart&auto=webp&s=83d58dcadd95322ed6c630bba7be3ca0c6536d50", -- Save me Gege Im a fraud
        },
        rs = {
          "Rust",
          "https://preview.redd.it/kpvw2rekapg91.jpg?auto=webp&s=39408bca64a7eb1512e167210d0ac910e141fd54", -- Even panda cum
        },
        go = {
          "Go",
          "https://preview.redd.it/does-jogo-have-what-it-takes-v0-0wy1f4881kyb1.png?width=1080&crop=smart&auto=webp&s=44f434b5d1aa9f62d8927a7eb219e73839880357", -- Save the curse society jogoat
        },
      }, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
      show_time = true, -- Show the timer

      -- Rich Presence text options
      editing_text = "Getting railed by %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
      file_explorer_text = "Smashing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
      git_commit_text = "Riding %s", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
      plugin_manager_text = "Managing balls", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
      reading_text = "Riding %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
      workspace_text = "Sucking off %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
      line_number_text = "Cock %s out of %s", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    },
  },
}
