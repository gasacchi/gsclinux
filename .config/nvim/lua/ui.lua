-- ----------------------------------------------------------------------------
-- UI
-- ----------------------------------------------------------------------------

local cmd = vim.cmd
local o = vim.o
local g = vim.g

-- true color support
cmd("set termguicolors")

-- colorizer lua
require'colorizer'.setup()

-- cmd('highlight Normal guibg=NONE ctermbg=NONE')

-- neovide
o.guifont =[[Hasklug\ Nerd\ Font:16]]
g.neovide_refresh_rate = 140
g.neovide_transparency = 0.9
g.neovide_cursor_vfx_mode= "pixiedust"
g.neovide_cursor_antialiasing= true
-- g.neovide_fullscreen= true

vim.cmd("colo yuno")

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
