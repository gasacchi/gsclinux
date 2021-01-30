-- ---------------------------------------
-- Plugins with paq-nvim
-- ---------------------------------------

-- ---------------------------------------
-- paq-nvim Setup
-- ---------------------------------------
-- Load the package manager
vim.cmd 'packadd packer.nvim'

-- --------------------------------------
-- Plugins List
-- --------------------------------------

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Neovim lsp
  use 'neovim/nvim-lspconfig'

  -- Completions
  use 'nvim-lua/completion-nvim'

  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  -- Tree
  use 'kyazdani42/nvim-tree.lua'

  -- Vim Commentary
  use 'tpope/vim-commentary'

  -- Auto Pairs
  use 'jiangmiao/auto-pairs'

  -- Vim Diff Sign
  use 'mhinz/vim-signify'

  -- Vim Which key
  use 'liuchengxu/vim-which-key'

  -- Vim easy motion
  use 'easymotion/vim-easymotion'

  -- Vim Surround
  use 'tpope/vim-surround'

  -- Lazygit
  use 'kdheepak/lazygit.nvim'

  -- Lualine
  use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Bufferline
  use 'akinsho/nvim-bufferline.lua'

  -- colorizer lua
  use 'norcalli/nvim-colorizer.lua'

  -- Haskell
  use 'neovimhaskell/haskell-vim'

  end)
