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

  -- ZEN goyo
  use 'junegunn/goyo.vim'

  -- Vim Commentary
  use 'tpope/vim-commentary'

  -- Vim Diff Sign
  use 'mhinz/vim-signify'

  -- Vim Which key
  use 'liuchengxu/vim-which-key'

  -- Vim easy motion
  use 'easymotion/vim-easymotion'

  -- Vim Surround
  use 'tpope/vim-surround'

  -- FZF
  use 'junegunn/fzf' 
  use 'junegunn/fzf.vim'

  -- Git
  use 'tpope/vim-fugitive'

  -- Lightline & Bufferline
  use 'itchyny/lightline.vim'
  use 'mengelbrecht/lightline-bufferline'

  -- Gruvbox8
  use 'lifepillar/vim-gruvbox8'
  
  end)
