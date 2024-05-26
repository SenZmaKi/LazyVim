return {
  "nvim-telescope/telescope-fzf-native.nvim",
  -- Override build instructions cause make doesn't seem to work on windows
  build = require("utils.globals").os.is_windows
      and "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
    or nil,
}
