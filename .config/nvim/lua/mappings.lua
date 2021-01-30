----------------------------------------------------------------------------
-- Mappings
-- ----------------------------------------------------------------------------

local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true }

local g = vim.g
local cmd = vim.cmd
local var = vim.api.nvim_set_var



-- Disable Arrow keys
keymap('n', '<UP>', '<NOP>', opts)
keymap('n', '<DOWN>', '<NOP>', opts)
keymap('n', '<LEFT>', '<NOP>', opts)
keymap('n', '<RIGHt>', '<NOP>', opts)
keymap('i', '<UP>', '<NOP>', opts)
keymap('i', '<DOWN>', '<NOP>', opts)
keymap('i', '<LEFT>', '<NOP>', opts)
keymap('i', '<RIGHt>', '<NOP>', opts)

-- Better Window navigation
-- move to split window easily with ctrl-{hjkl}
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize window with alt-{hjkl}
keymap('n', '<M-j>', ':resize -2<CR>', opts)
keymap('n', '<M-k>', ':resize +2<CR>', opts)
keymap('n', '<M-h>', ':vertical resize -2<CR>', opts)
keymap('n', '<M-l>', ':vertical resize +2<CR>', opts)

-- Esc to nn
keymap('i', 'kk', '<ESC>', opts)
-- Escape from command mode with nn
keymap('c', 'kk', '<C-c>', opts)

-- Map Leader to space
local which_map_opts = { noremap = true, silent = true }
g.mapleader = ' '
keymap('n', '<Leader>', ":silent WhichKey '<Space>'<CR>", which_map_opts)
keymap(
  'v',
  '<Leader>',
  ":silent <C-u> :silent WhichKeyVisual '<Space>'<CR>",
  which_map_opts
)

-- ----------------------------------------------------------------------------
-- WhichKey Mapping
-- ----------------------------------------------------------------------------

-- temp mapping
cmd([[function! SynGroup()                                                            
    let l:s = synID(line('.'), col('.'), 1)                                       
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun]])
keymap('n', '<Leader>c', ':call SynGroup()<CR>', opts)

local map = {}

-- Single Mapping
map[' '] =  { '<Esc>', ' Close' }
map['/'] =  { ':Commentary', ' Comment' }
map['h'] =  { ':let @/ = ""', ' No Highlight Search' }
map['q'] =  { ':q', ' Quit' }
map['Q'] =  { ':q!', ' Quit Without Saving' }
map['g'] =  { ':LazyGit', ' Open Lazygit'}
map['c'] = ' Syntax Highlight'


-- Buffer Mapping
keymap('n', '<Leader>bD', ':bdelete<Space>', opts)
-- keymap('n', '<Leader>bg', ':buffers<Space>', opts)
map.b   = {
  name  = '﬘ Buffers',
  [' '] = { '<Esc>', ' Close' },
  f     = { ':bfirst', ' First buffer' },
  l     = { ':blast', ' Last buffer' },
  n     = { ':bnext', ' Next Buffer' },
  p     = { ':bprevious', ' Previous Buffer' },
  d     = { ':bdelete %', ' delete current buffer' },
  -- g     = ' Go To Buffer',
  D     = '﫨Delete Buffer(s)'
}

-- Command Mode Mapping
keymap('n', '<Leader>bD', ':bdelete<Space>', opts)

-- File Mapping
keymap('n' ,'<Leader>fe', ':e<SPACE>',opts)
map.f   = {
  name  = ' File',
  [' '] = { '<Esc>', ' Close' },
  W     = { ':wq', ' Write and Exit' },
  e     = ' Edit file(s)',
  w     = { ':w', ' Write' },
}

-- LSP
map.l   = {
  name  = ' LSP',
  D     = 'Declaration',
  d     = 'Definition',
  h     = 'Hover',
  i     = 'Implementation',
  s     = 'Signature Help',
  a     = 'Add Workspace Folder',
  R     = 'Remove Workspace Folder',
  l     = 'List Workspace Folder',
  t     = 'Type Definition',
  r     = 'Rename',
  F     = 'References',
  e     = 'Show Line Diagnostics',
  p     = 'Go to Previous',
  n     = 'Go to Next',
  q     = 'Set loc List',
  f     = 'Format',
}


-- Insert map
keymap('n' ,'<Leader>ip', '"+p',opts)
map.i   = {
  p     = ' Paste From Clipboard'
}

-- Motion (easy motio)
map.m   = {
  name  = '省 Motion',
  [' '] = { '<Esc>', ' Close' },
  f     = { '<Plug>(easymotion-f)', 'Char Forward' },
  F     = { '<Plug>(easymotion-F)', 'Char Backwards' },
  t     = { '<Plug>(easymotion-t)', 'Before Char Forward' },
  T     = { '<Plug>(easymotion-T)', 'Before Char Backwards' },
  w     = { '<Plug>(easymotion-w)', '  word forward' },
  W     = { '<Plug>(easymotion-W)', '  forward' },
  b     = { '<Plug>(easymotion-b)', '  word backward' },
  B     = { '<Plug>(easymotion-B)', '  WORD backward' },
  e     = { '<Plug>(easymotion-e)', '  word forward' },
  E     = { '<Plug>(easymotion-E)', '  forward' },
  ge    = { '<Plug>(easymotion-ge)', '  word backward' },
  gE    = { '<Plug>(easymotion-gE)', '  WORD backward' },
  j     = { '<Plug>(easymotion-j)', 'Below' },
  k     = { '<Plug>(easymotion-k)', 'Above' },
  n     = { '<Plug>(easymotion-n)', 'Next Search Forward' },
  N     = { '<Plug>(easymotion-N)', 'Previous Search Backwards' },
  s     = { '<Plug>(easymotion-s)', 'Search Char Forward and Backward' }
}


-- Plugin Mapping
map.p = {
  name    = ' Plugin',
  [' '] = { '<Esc>', ' Close' },
  C     = { ':PackerComplie', 'Complie' },
  c     = { ':PackerClean', 'Clean' },
  i     = { ':PackerInstall', 'Install' },
  u     = { ':PackerUpdate', 'Update' },
  s     = { ':PackerSync', 'Sync' },
}

-- Search Mapping:TODO: use telescope
map.s   = {
  name  = 'ﰍ Search',
  [' '] = { '<Esc>', ' Close' },
  f     = { ':Telescope find_files', ' Files' },
  g     = { ':Telescope live_grep', ' Live Grep' },
  G     = { ':GFiles?', ' modified git files' },
  b     = { ':Telescope buffers', ' Buffers' },
  l     = { ':BLines', ' lines buffer' },
  L     = { ':Lines', '靖lines' },
  r     = { ':Rg', 'ﳳ text' },
  h     = { ':Telescope help_tags', ' Help tag' },
}

-- nvim-tree
map.t   = {
  name  = '滑Open File Tree',
  [' '] = { '<Esc>', ' Close' },
  t     = { ':NvimTreeToggle', 'Toggle' },
  r     = { ':NvimTreeRefresh', 'Refresh' },
  s     = { ':NvimTreeFindFile', 'Find / Search' },
}



-- Set vim global variable
var('which_key_map', map)


-- Register WhichKey
cmd('call which_key#register(" ", "g:which_key_map")')

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
