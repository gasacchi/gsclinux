local cmd, g
do
  local _obj_0 = vim
  cmd, g = _obj_0.cmd, _obj_0.g
end
local nvim_set_keymap, nvim_set_var
do
  local _obj_0 = vim.api
  nvim_set_keymap, nvim_set_var = _obj_0.nvim_set_keymap, _obj_0.nvim_set_var
end
local opts = {
  noremap = true
}
nvim_set_keymap("i", "<DOWN>", "<NOP>", opts)
nvim_set_keymap("i", "<LEFT>", "<NOP>", opts)
nvim_set_keymap("i", "<RIGHt>", "<NOP>", opts)
nvim_set_keymap("i", "<UP>", "<NOP>", opts)
nvim_set_keymap("n", "<DOWN>", "<NOP>", opts)
nvim_set_keymap("n", "<LEFT>", "<NOP>", opts)
nvim_set_keymap("n", "<RIGHt>", "<NOP>", opts)
nvim_set_keymap("n", "<UP>", "<NOP>", opts)
nvim_set_keymap("i", "jk", "<ESC>", opts)
nvim_set_keymap("c", "jk", "<C-c>", opts)
cmd("autocmd FileType purescript inoremap <buffer> ;l ∀")
cmd("autocmd FileType purescript inoremap <buffer> ;h ∷")
cmd("autocmd FileType purescript inoremap <buffer> ;d ←")
cmd("autocmd FileType purescript inoremap <buffer> ;t →")
cmd("autocmd FileType purescript inoremap <buffer> ;c ⇒")
cmd("autocmd FileType purescript inoremap <buffer> ;i ⇐")
local which_map_opts = {
  noremap = true,
  silent = true
}
g.mapleader = " "
nvim_set_keymap("n", "<Leader>", ":silent WhichKey '<Space>'<CR>", which_map_opts)
nvim_set_keymap("v", "<Leader>", ":silent <C-u> :silent WhichKeyVisual '<Space>'<CR>", which_map_opts)
nvim_set_keymap("n", "<Leader>bD", ":bdelete<Space>", opts)
local b = {
  name = "﬘ Buffers",
  D = "﫨Delete Buffer(s)",
  [" "] = {
    "<Esc>",
    " Close"
  },
  b = {
    ":Telescope buffers",
    " First buffer"
  },
  d = {
    ":bdelete %",
    " delete current buffer"
  },
  f = {
    ":bfirst",
    " First buffer"
  },
  l = {
    ":blast",
    " Last buffer"
  },
  n = {
    ":BufferLineCycleNext",
    " Next Buffer"
  },
  p = {
    ":BufferLineCyclePrev",
    " Previous Buffer"
  }
}
local s = {
  name = " Search",
  [" "] = {
    "<Esc>",
    " Close"
  },
  ["."] = {
    ":Telescope live_grep",
    " Live Grep"
  },
  b = {
    ":Telescope marks",
    " Bookmarks"
  },
  c = {
    ":Telescope colorscheme",
    " Colorschemes"
  },
  g = {
    ":Telescope git_files",
    " Git Files"
  },
  h = {
    ":Telescope oldfiles",
    " History / Recent Files"
  },
  k = {
    ":SessionSave",
    " Keep Session"
  },
  l = {
    ":SessionLoad",
    " Last Sessions"
  },
  s = {
    ":Telescope file_browser",
    "  Keep Session"
  }
}
local h = {
  name = " Help",
  [" "] = {
    "<Esc>",
    " Close"
  },
  H = {
    ":Telescope highlights",
    " Highlights"
  },
  c = {
    ":Telescope commands",
    " Commands"
  },
  f = {
    ":Telescope filetypes",
    " Filetypes"
  },
  h = {
    ":Telescope help_tags",
    " Help Tags"
  },
  k = {
    ":Telescope keymaps",
    "  Keymaps"
  },
  m = {
    ":Telescope man_pages",
    "龎 Manual Pages"
  }
}
local o = {
  name = "冷Open",
  [" "] = {
    "<Esc>",
    " Close"
  },
  t = {
    ":NvimTreeToggle",
    "滑Tree"
  }
}
local e = {
  name = " Editor",
  [" "] = {
    "<Esc>",
    " Close"
  },
  e = {
    ":luafile %",
    "省Eval Current Lua File"
  },
  M = {
    ":MinimapToggle",
    " Minimap"
  },
  m = {
    ":MoonCompile",
    "Compile"
  },
  h = {
    ":let @/ = ''",
    " No Highlight Search"
  },
  n = {
    ":set invnumber",
    " Line Number"
  },
  r = {
    ":set invrelativenumber",
    " Line Number"
  },
  c = {
    ":e $MYVIMRC",
    " Edit Config File"
  },
  z = {
    ":Goyo",
    " Zen Mode"
  }
}
g = {
  name = " Git",
  [" "] = {
    "<Esc>",
    " Close"
  },
  g = {
    ":lua require'neogit'.open{ kind = 'split' }",
    " Neogit"
  },
  c = {
    ":Neogit commit",
    " Commit"
  },
  s = " Stage Hunk",
  u = " Unstage Hunk",
  R = "﬘ Reset Buffer",
  r = "痢Reset Hunk",
  P = " Preview Hunk",
  b = " Blame Line",
  p = "玲Previous Hunk",
  n = "怜Next Hunk"
}
nvim_set_keymap("n", "<Leader>fe", ":e<SPACE>", opts)
local f = {
  name = " File",
  e = " Edit file(s)",
  [" "] = {
    "<Esc>",
    " Close"
  },
  S = {
    ":wq",
    " Save and Exit"
  },
  n = {
    ":DashboardNewFile",
    " New File"
  },
  s = {
    ":w",
    " Save file"
  }
}
local p = {
  name = " Plugin",
  [" "] = {
    "<Esc>",
    " Close"
  },
  C = {
    ":PackerClean",
    "﯊ Clean"
  },
  c = {
    ":PackerCompile",
    " Compile"
  },
  i = {
    ":PackerInstall",
    "  Install"
  },
  s = {
    ":PackerSync",
    "痢Sync"
  },
  u = {
    ":PackerUpdate",
    " Update"
  }
}
local m = {
  name = "省Motion",
  [" "] = {
    "<Esc>",
    " Close"
  },
  w = {
    ":HopWord",
    " Hop Word"
  },
  p = {
    ":HopPattern",
    " Hop Pattern"
  },
  l = {
    ":HopLine",
    " Hop Line"
  },
  c = {
    ":HopChar1",
    " Hop Char 1"
  },
  C = {
    ":HopChar2",
    "了 Hop Char 2"
  }
}
local w = {
  name = " Window",
  [" "] = {
    "<Esc>",
    " Close"
  },
  H = {
    ":vertical resize -2",
    " -Resize Vertical"
  },
  J = {
    ":resize -2",
    " +Resize Horizontal"
  },
  K = {
    ":resize +2",
    " -Resize Horizontal"
  },
  L = {
    ":vertical resize +2",
    " +Resize Vertical"
  },
  h = {
    "<C-w>h",
    " Move Left"
  },
  j = {
    "<C-w>j",
    " Move Down"
  },
  k = {
    "<C-w>k",
    " Move Up"
  },
  l = {
    "<C-w>l",
    " Move Right"
  },
  o = {
    "<C-w>o",
    " Close Other Window "
  },
  c = {
    "<C-w>c",
    " Close Current Window "
  },
  n = {
    "<C-w>w",
    "怜Next Window"
  },
  p = {
    "<C-w>p",
    "玲Prev Window"
  },
  w = {
    "<C-w>n",
    " New Window Buffer"
  },
  s = {
    ":split",
    "祈Horizontal Split"
  },
  v = {
    ":vsplit",
    " Vertical Split"
  }
}
local map = {
  b = b,
  e = e,
  f = f,
  g = g,
  h = h,
  m = m,
  o = o,
  p = p,
  s = s,
  w = w,
  [" "] = {
    "<Esc>",
    " Close"
  },
  ["."] = {
    ":Telescope find_files",
    " Find File"
  },
  [";"] = {
    "gcc",
    " Comment"
  },
  Q = {
    ":q!",
    " Quit Without Saving"
  },
  q = {
    ":q",
    " Quit"
  }
}
nvim_set_var("which_key_map", map)
cmd("call which_key#register(' ', 'g:which_key_map')")
