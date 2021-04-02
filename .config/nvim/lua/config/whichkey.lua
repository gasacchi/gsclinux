local cmd, g, o
do
  local _obj_0 = vim
  cmd, g, o = _obj_0.cmd, _obj_0.g, _obj_0.o
end
g.which_key_use_floating_win = 0
cmd("autocmd! FileType which_key")
cmd("autocmd  FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler")
o.timeoutlen = 300
