-- ---------------------------------------------------------------------------
-- Basic settings
-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------
-- Setup
-- ---------------------------------------------------------------------------
-- global-scoped options
local o = vim.o
-- buffer-scoped options
local bo = vim.bo
-- window-scoped options
local wo = vim.wo
-- vim command
local cmd = vim.cmd

-- ----------------------------------------------------------------------------
-- Global Scope
-- ----------------------------------------------------------------------------

o.guicursor= ''
-- Encoding
-- The encoding displayed
o.encoding ='utf-8'
-- The encoding written to file
o.fileencoding ='utf-8'

-- Auto chdir
o.autochdir = true

-- abandon hidden buffer when unloading
o.hidden = true

-- Fix backspace indent
o.backspace ='indent,eol,start'

-- Fix split to bottom and right
o.splitbelow = true
o.splitright = true

-- Set Default shell
o.shell='/bin/zsh'

-- Searching
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- Visual
vim.cmd('set noshowmode')

-- ----------------------------------------------------------------------------
-- Buffer Scope
-- ----------------------------------------------------------------------------

-- Tabs
bo.tabstop = 4
o.tabstop = 4
bo.softtabstop = 0
o.softtabstop = 0
bo.shiftwidth = 4
o.shiftwidth = 4
bo.expandtab = true
o.expandtab = true
bo.swapfile = false
o.swapfile = false

-- ----------------------------------------------------------------------------
-- Window Scope
-- ----------------------------------------------------------------------------


-- Set colorcolumn
wo.colorcolumn = '80'
-- Set relative number
wo.relativenumber = true
wo.number = true
-- Visual Settings
wo.cursorline = true
wo.cursorcolumn = true
wo.wrap = false
wo.scrolloff = 8

-- ----------------------------------------------------------------------------
-- Commands
-- ----------------------------------------------------------------------------
cmd 'syntax on'

-- Jump to file faster
cmd ':set path+=**'


-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
