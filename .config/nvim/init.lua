local bo
bo = vim.bo
require('settings')
require('plugins')
require('mappings')
require('ui')
if not (filetype == 'purescript') then
  require('config/completion')
end
require('config/whichkey')
require('config/dashboard')
require('config/gitsigns')
require('config/lspkindicons')
require('config/indent')
require('config/hop')
require('config/nvimtree')
require('config/colorizer')
require('config/minimap')
require('config/goyo')
require('config/neogit')
return require('lsp/init')
