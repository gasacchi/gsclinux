-- ----------------------------------------------------------------------------
-- FZF plugin config
-- ----------------------------------------------------------------------------

local g = vim.g

-- Key bindings
g.fzf_action = {
   ['ctrl-t'] = 'tab split',
   ['ctrl-x'] = 'split',
   ['ctrl-v'] = 'vsplit'
}
-- set to window float
--[[ let g:fzf_layout = {'up':'~90%', 'window': 
--{ 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5,
--'highlight': 'Todo', 'border': 'sharp' } }]]
g.fzf_layout = { ['down'] =  '40%'}


-- Customize fzf colors to match your color scheme
g.fzf_colors = { 
  fg         =   { 'fg', 'Normal' },
  bg         =   { 'bg', 'Normal' },
  hl         =   { 'fg', 'Comment' },
  ['fg+']    =   { 'fg', 'CursorLine', 'CursorColumn', 'Normal' },
  ['bg+']    =   { 'bg', 'CursorLine', 'CursorColumn' },
  ['hl+']    =   { 'fg', 'Statement' },
  info       =   { 'fg', 'PreProc' },
  border     =   { 'fg', 'Function' },
  prompt     =   { 'fg', 'Conditional' },
  pointer    =   { 'fg', 'Exception' },
  marker     =   { 'fg', 'Keyword' },
  spinner    =   { 'fg', 'Label' },
  header     =   { 'fg', 'Comment' }
}

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
