" Support only 256 or full colors
if !has('gui_running') && &t_Co < 256
  finish
end



" Reset existing highlight and syntax
hi clear
if exists('syntax_on')
  syntax reset
end

" Colorscheme name
let g:colors_name='yuno'

lua require('yuno')

" Set appropriate background
set background=dark

" lua package.loaded["gruvbox"] = nil
" lua require("gruvbox")
