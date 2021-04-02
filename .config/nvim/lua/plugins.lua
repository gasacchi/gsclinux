local cmd
cmd = vim.cmd
local startup
startup = require('packer').startup
cmd('packadd packer.nvim')
local packages
packages = function(use)
  use('wbthomason/packer.nvim')
  use('neovim/nvim-lspconfig')
  use('hrsh7th/nvim-compe')
  use('onsails/lspkind-nvim')
  use('TimUntersberger/neogit')
  use('lewis6991/gitsigns.nvim')
  use('f-person/git-blame.nvim')
  use({
    'nvim-telescope/telescope.nvim',
    requires = {
      {
        'nvim-lua/popup.nvim'
      },
      {
        'nvim-lua/plenary.nvim'
      }
    }
  })
  use('b3nj5m1n/kommentary')
  use('phaazon/hop.nvim')
  use('tpope/vim-surround')
  use('kyazdani42/nvim-tree.lua')
  use({
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  })
  use({
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua'
  })
  use('sainnhe/sonokai')
  use('liuchengxu/vim-which-key')
  use('glepnir/dashboard-nvim')
  use('akinsho/nvim-bufferline.lua')
  use('norcalli/nvim-colorizer.lua')
  use('wfxr/minimap.vim')
  use('junegunn/goyo.vim')
  use('sheerun/vim-polyglot')
  return use('svermeulen/nvim-moonmaker')
end
return startup(packages)
