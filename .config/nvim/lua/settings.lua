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

-- Encoding
-- The encoding displayed
o.encoding ='utf-8' 
-- The encoding written to file
o.fileencoding ='utf-8'

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
o.showmode = false

-- ----------------------------------------------------------------------------
-- Buffer Scope
-- ----------------------------------------------------------------------------

-- Tabs
bo.tabstop = 2
o.tabstop = 2
bo.softtabstop = 0
o.softtabstop = 0
bo.shiftwidth = 2
o.shiftwidth = 2
bo.expandtab = true
o.expandtab = true

-- ----------------------------------------------------------------------------
-- Window Scope
-- ----------------------------------------------------------------------------


-- Set colorcolumn
wo.colorcolumn = '80'
-- Set relative number
wo.relativenumber = true
-- Visual Settings
wo.cursorline = true
wo.cursorcolumn = true

-- ----------------------------------------------------------------------------
-- Commands
-- ----------------------------------------------------------------------------
cmd 'syntax on'

-- Jump to file faster
cmd ':set path+=**'


-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
