-- ----------------------------------------------------------------------------
-- UI
-- ----------------------------------------------------------------------------

local cmd = vim.cmd
local o = vim.o
local g = vim.g

-- true color support
cmd("set termguicolors")

-- cmd('highlight Normal guibg=NONE ctermbg=NONE')

g.sonokai_style = 'andromeda'                                                                                                             
g.sonokai_enable_italic = 1
vim.cmd("colo sonokai")

require('lualine').setup{
  options = { 
    theme = 'nightfly',
    section_separators = {'', ''},
    component_separators = {'::', '::'}
  }
}

require'bufferline'.setup{
  options = {
    separator_style = "slant"
  }
}

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
