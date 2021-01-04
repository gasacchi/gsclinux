-- ----------------------------------------------------------------------------
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
keymap('i', 'nn', '<ESC>', opts)
-- Escape from command mode with nn
keymap('c', 'nn', '<C-c>', opts)

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


local map = {}

-- Single Mapping
map[' '] =  { '<Esc>', ' close' }
map['/'] =  { ':Commentary', '[ﱕ]toggle comment' }
map['h'] =  { ':let @/ = ""', '[]no highlight search' }
map['q'] =  { ':q', '[]quit' }
map['Q'] =  { ':q!', '[]quit without saving' }

-- Buffer Mapping
keymap('n', '<Leader>bD', ':bdelete<Space>', opts) 
keymap('n', '<Leader>bg', ':buffers<Space>', opts) 
map.b   = {
  name  = '[﬘]buffers',
  [' '] = { '<Esc>', ' close' },
  f     = { ':bfirst', ' first buffer' },
  l     = { ':blast', ' last buffer' },
  n     = { ':bnext', 'ﰴ next buffer' },
  p     = { ':bprevious', 'ﰱ previous buffer' },
  d     = { ':bdelete %', ' delete current buffer' },
  g     = 'ﰷ go to buffer',
  D     = ' delete(s)'
}

-- File Mapping
keymap('n' ,'<Leader>fe', ':e<SPACE>',opts)
map.f   = {
  name  = '[]file',
  [' '] = { '<Esc>', ' close' },
  W     = { ':wq', ' file write and exit' },
  e     = 'ﱐ edit file(s)',
  w     = { ':w', ' file write / save' },
-- \ 'x': [':CocCommand explorer', '况open explorer'],
}

-- Motion (easy motio)
map.m   = {
  name  = '[ﮙ]motion',
  [' '] = { '<Esc>', ' close' },
  f     = { '<Plug>(easymotion-f)', 'ﮜ char forward' },
  F     = { '<Plug>(easymotion-F)', 'ﮜ char backward' },
  t     = { '<Plug>(easymotion-t)', 'ﮜ before char forward' },
  T     = { '<Plug>(easymotion-T)', 'ﮜ before char backward' },
  w     = { '<Plug>(easymotion-w)', '  word forward' },
  W     = { '<Plug>(easymotion-W)', '  forward' },
  b     = { '<Plug>(easymotion-b)', '  word backward' },
  B     = { '<Plug>(easymotion-B)', '  WORD backward' },
  e     = { '<Plug>(easymotion-e)', '  word forward' },
  E     = { '<Plug>(easymotion-E)', '  forward' },
  ge    = { '<Plug>(easymotion-ge)', '  word backward' },
  gE    = { '<Plug>(easymotion-gE)', '  WORD backward' },
  j     = { '<Plug>(easymotion-j)', ' below' },
  k     = { '<Plug>(easymotion-k)', ' above' },
  n     = { '<Plug>(easymotion-n)', '怜next search forward' },
  N     = { '<Plug>(easymotion-N)', '玲previous search backward' },
  s     = { '<Plug>(easymotion-s)', ' search char forward and backward' }
}


-- " Plug Mapping
-- let g:which_key_map.p = {
      -- \ 'name': '[]plugin',
      -- \ ' ': ['<Esc>', ' close'],
      -- \ 's': [':PlugStatus', ' show status'],
      -- \ 'd': [':PlugDiff', ' show diff'],
      -- \ 'c': [':PlugClean', 'ﮤ clean plugin(s)'],
      -- \ 'i': [':PlugInstall', 'ﮣ install plugin(s)'],
      -- \ 'u': [':PlugUpdate', 'ﮮ updated plugin(s)'],
      -- \ 'U': [':PlugUpgrade', ' self upgrade'],
      -- \}

-- Search Mapping
keymap('n', '<Leader>sb', ':buffers<SPACE>', opts)
map.s   = {
  name  = '[ﰍ]search',
  [' '] = { '<Esc>', ' close' },
  c     = { ':Commands', ' commands' },
  f     = { ':Files', ' files' },
  g     = { ':GFiles', ' git files' },
  G     = { ':GFiles?', ' modified git files' },
  b     = '﬘ buffers',
  B     = { ':Buffers', ' fzf buffers' },
  l     = { ':BLines', ' lines buffer' },
  L     = { ':Lines', '靖lines' },
  r     = { ':Rg', 'ﳳ text' },
  h     = { ':History', ' history' },
}




-- Set vim global variable
var('which_key_map', map)


-- Register WhichKey
cmd('call which_key#register(" ", "g:which_key_map")')

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
