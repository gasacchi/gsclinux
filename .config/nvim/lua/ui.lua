local cmd, g, o
do
  local _obj_0 = vim
  cmd, g, o = _obj_0.cmd, _obj_0.g, _obj_0.o
end
require("lualine")
require("bufferline")
cmd("set termguicolors")
g.sonokai_style = "andromeda"
g.sonokai_enable_italic = 1
cmd("colo sonokai")
local lualine_setup = {
  options = {
    theme = "nightfly",
    section_separators = {
      "",
      ""
    },
    component_separators = {
      "::",
      "::"
    }
  }
}
local bufferline_setup = {
  options = {
    separator_style = "slant"
  }
}
require("lualine").setup(lualine_setup)
require("bufferline").setup(bufferline_setup)
