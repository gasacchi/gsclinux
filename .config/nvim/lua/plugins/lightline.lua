-- ----------------------------------------------------------------------------
-- Lightline and bufferline vim
-- ----------------------------------------------------------------------------

local g = vim.g
local cmd = vim.cmd

-- Enable lightline
g.laststatus   = 2
g.lightline    = {
  colorscheme  = 'gruvbox8',
  active       = {
    left       = {
      { 'mode', 'paste' },
      { 'gitbranch', 'readonly', 'filename', 'modified' }
    }
  },
  component    = {
     lineinfo  = ' %3l:%-2v',
  },
  component_function = {
     gitbranch = 'fugitive#head',
  }
}
-- " let g:lightline.separator = {
-- " \   'left': "\ue0b4", 'right': "\ue0b6"
-- " \}
-- " let g:lightline.subseparator = {
-- " \   'left': "\ue0b5", 'right': "\ue0b7"
-- " \}

g.lightline.tabline = {
  left  = { { 'buffers' } },
  right = { { 'close' } }
}

g.lightline.component_expand = {
  buffers = 'lightline#bufferline#buffers'
}

g.lightline.component_type = {
  buffers = 'tabsel'
}

--  buffer line config
cmd("set showtabline=2")  -- Show tabline
cmd("set guioptions-=e")  --  Don't use GUI tabline
cmd("let g:lightline#bufferline#unnamed = \"[NO NAME]\"")
cmd("let g:lightline#bufferline#filename_modifier= \":.\"")
cmd("let g:lightline#bufferline#more_buffers = \"...\"")
cmd("let g:lightline#bufferline#modified = \" +\"")
cmd("let g:lightline#bufferline#read_only = \" -\"")
cmd("let g:lightline#bufferline#shorten_path = 1")
cmd("let g:lightline#bufferline#show_number = 0")

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
