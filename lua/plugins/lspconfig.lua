local pyright = {
  -- New Project Configuration
  -- pyrightconfig.json in the project root dir with the path to the venv
  -- requirements.txt in the project root dir (doesn't matter if it's empty so long as it's there)
  filetypes = { "python" },
  settings = {
    pyright = { autoImportCompletion = true },
    python = {
      pythonPath = "python",
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "standard",
      },
    },
  },
}
local rust_analyzer = {
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importPrefix = "crate",
      },
      checkOnSave = {
        command = "check", -- Disable clippy
        extraArgs = "",
      },
    },
  },
}

local eslint = {
  filetypes = { "balls" }, --Deactivate eslint cause it's kinda annoying and deactivating it from LazyExtras doesn't seem to work
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      ["*"] = function(_, _) end,
    },
    diagnostics = {
      update_in_insert = true,
    },
    servers = {
      pyright = pyright,
      rust_analyzer = rust_analyzer,
      eslint = eslint,
    },
  },
}
