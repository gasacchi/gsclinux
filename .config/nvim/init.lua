-- General 
require'settings'

-- Plugins
require'plugins'

-- Mappings
require'mappings'

-- UI
require'ui'

-- Plugins Configuration
if vim.bo.filetype ~= 'purescript' then
  require'config/completion'
end
require'config/whichkey'
require'config/dashboard'
require'config/gitsigns'
require'config/lspkindicons'
require'config/indent'
require'config/hop'
require'config/nvimtree'
require'config/colorizer'
require'config/minimap'
require'config/goyo'
require'config/neogit'


-- LSP Configuration
require'lsp/init'
