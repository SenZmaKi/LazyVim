return require("utils.globals").plugins.neo_tree.use_trash
    and {
      "nvim-neo-tree/neo-tree.nvim",
      -- https://github.com/nvim-neo-tree/neo-tree.nvim/issues/202#issuecomment-1428278234
      opts = {
        filesystem = {
          commands = {
            -- over write default 'delete' command to 'trash'.
            delete = function(state)
              local inputs = require("neo-tree.ui.inputs")
              local path = state.tree:get_node().path
              local msg = "Are you sure you want to trash " .. path
              inputs.confirm(msg, function(confirmed)
                if not confirmed then
                  return
                end

                vim.fn.system({ "trash", vim.fn.fnameescape(path) })
                require("neo-tree.sources.manager").refresh(state.name)
              end)
            end,

            -- over write default 'delete_visual' command to 'trash' x n.
            delete_visual = function(state, selected_nodes)
              local inputs = require("neo-tree.ui.inputs")

              local msg = "Are you sure you want to trash " .. #selected_nodes .. " files ?"
              inputs.confirm(msg, function(confirmed)
                if not confirmed then
                  return
                end
                for _, node in ipairs(selected_nodes) do
                  vim.fn.system({ "trash", vim.fn.fnameescape(node.path) })
                end
                require("neo-tree.sources.manager").refresh(state.name)
              end)
            end, -- Override delete to use trash instead of rm
          },
        },
      },
    }
  or {}
