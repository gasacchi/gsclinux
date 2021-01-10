-- ----------------------------------------------------------------------------
-- GSC init.lua
-- ----------------------------------------------------------------------------

-- Plugins
require("plugins")

-- Plugins spesific config
require("plugins.fzf")
require("plugins.lualine")
require("plugins.whichkey")
require("plugins.bufferline")

require("lsp")


-- Mapping
require("mappings")

-- Settings
require("settings")

-- UI
require("ui")
vim.cmd("colo yuno")

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
