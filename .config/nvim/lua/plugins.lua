-- ---------------------------------------
-- Plugins with paq-nvim
-- ---------------------------------------

-- ---------------------------------------
-- paq-nvim Setup
-- ---------------------------------------
-- Load the package manager
vim.cmd 'packadd paq-nvim'
-- Import module and bind to paq function
local paq = require'paq-nvim'.paq

-- --------------------------------------
-- Plugins List
-- --------------------------------------
-- paq-nvim manages itself
paq {'savq/paq-nvim', opt = true }

-- ZEN goyo
paq { 'junegunn/goyo.vim' }

-- Vim Commentary
paq { 'tpope/vim-commentary' }

-- Vim Diff Sign
paq { 'mhinz/vim-signify' }

-- Vim Which key
paq { 'liuchengxu/vim-which-key' }

-- Vim easy motion
paq { 'easymotion/vim-easymotion' }

-- Vim Surround
paq { 'tpope/vim-surround' }

-- FZF
paq { 'junegunn/fzf', hook = vim.fn['fzf#install'] }
paq { 'junegunn/fzf.vim' }

-- Git
paq { 'tpope/vim-fugitive' }

-- Lightline & Bufferline
paq { 'itchyny/lightline.vim' }
paq { 'mengelbrecht/lightline-bufferline' }

-- Gruvbox8
paq { 'lifepillar/vim-gruvbox8' }
