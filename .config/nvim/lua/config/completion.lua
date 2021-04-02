local cmd, o
do
  local _obj_0 = vim
  cmd, o = _obj_0.cmd, _obj_0.o
end
local col, getline, pumvisible
do
  local _obj_0 = vim.fn
  col, getline, pumvisible = _obj_0.col, _obj_0.getline, _obj_0.pumvisible
end
local nvim_set_keymap, nvim_replace_termcodes
do
  local _obj_0 = vim.api
  nvim_set_keymap, nvim_replace_termcodes = _obj_0.nvim_set_keymap, _obj_0.nvim_replace_termcodes
end
local setup
setup = require("compe").setup
local compe_setup = {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = "enable",
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = true,
  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lsp = true,
    nvim_lua = true
  }
}
setup(compe_setup)
local t
t = function(str)
  return nvim_replace_termcodes(str, true, true, true)
end
local check_back_space
check_back_space = function()
  local cl = col(".") - 1
  if cl == 0 or getline("."):sub(cl, cl):match("%s") then
    return true
  else
    return false
  end
end
_G.tab_complete = function()
  if pumvisible() == 1 then
    return t("<C-n>")
  elseif check_back_space() then
    return t("<Tab>")
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if pumvisible() == 1 then
    return t("<C-p>")
  else
    return t("<S-Tab>")
  end
end
nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {
  expr = true
})
nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {
  expr = true
})
nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {
  expr = true
})
nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {
  expr = true
})
cmd("inoremap <silent><expr> <C-Space> compe#complete()")
cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")
o.completeopt = "menuone,noselect"
