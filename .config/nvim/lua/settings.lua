local o, bo, wo, cmd
do
  local _obj_0 = vim
  o, bo, wo, cmd = _obj_0.o, _obj_0.bo, _obj_0.wo, _obj_0.cmd
end
o.guicursor = ''
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.autochdir = true
o.hidden = true
o.backspace = 'indent,eol,start'
o.splitbelow = true
o.splitright = true
o.shell = '/bin/zsh'
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true
cmd('set noshowmode')
bo.tabstop = 2
o.tabstop = 2
bo.softtabstop = 0
o.softtabstop = 0
bo.shiftwidth = 2
o.shiftwidth = 2
bo.expandtab = true
o.expandtab = true
bo.swapfile = false
o.swapfile = false
wo.colorcolumn = '80'
wo.cursorline = true
wo.cursorcolumn = true
wo.wrap = false
wo.scrolloff = 8
cmd('syntax on')
cmd('filetype on')
cmd('filetype plugin indent on')
cmd('set shortmess+=c')
cmd(':set path+=**')
