"               ___    __    ___    __    ___  ___  _   _  ____ 
"              / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _)
"             ( (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_ 
"              \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
" =============================================================================
"                             _  _  ____  __  __ 
"                            ( \/ )(_  _)(  \/  )
"                             \  /  _)(_  )    ( 
"                              \/  (____)(_/\/\_)
" =============================================================================
"   __  __    __    ____  ____  ____  _  _  ___  ___        _  _  ____  __  __ 
"  (  \/  )  /__\  (  _ \(  _ \(_  _)( \( )/ __)/ __)      ( \/ )(_  _)(  \/  )
"   )    (  /(__)\  )___/ )___/ _)(_  )  (( (_-.\__ \       \  /  _)(_  )    ( 
"  (_/\/\_)(__)(__)(__)  (__)  (____)(_)\_)\___/(___/  ()    \/  (____)(_/\/\_)
" =============================================================================
" Author:  Gasacchi
" Website: https://gasacchi.com
" Licence: GPL
" =============================================================================

" Disabling arrow key and live with it >.<
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Better window navigation
" move to spit window easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize with alt + hjkl
" resize spit window easily
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
noremap <silent> <M-l>    :vertical resize +2<CR>

" Remap Esc to jk
inoremap nn <ESC>
" Escape command mode
cnoremap nn <C-c>

" Map Leader to space  
let mapleader="\<Space>"
nnoremap <silent> <Leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" WhichKey Mappings

" Create map to add keys to
let g:which_key_map =  {}

" Single Mapping
let g:which_key_map[' '] =  ['<Esc>', ' close']
let g:which_key_map['/'] =  [':Commentary', '[ﱕ]toggle comment']
let g:which_key_map['h'] =  [':let @/ = ""', '[]no highlight search']
let g:which_key_map['q'] =  [':q', '[]quit']
let g:which_key_map['Q'] =  [':q!', '[]quit without saving']

" Action Mapping
" let g:which_key_map.a = {
      " \ 'name': '[ﰌ]actions',
      " \ ' ': ['<Esc>']
      " \}

" Buffer Mapping
nnoremap <Leader>bD :bdelete<SPACE>
nnoremap <Leader>bg :buffer<SPACE>
let g:which_key_map.b = {
      \ 'name': '[﬘]buffers',
      \ ' ': ['<Esc>', ' close'],
      \ 'f': [':bfirst', ' first buffer'],
      \ 'l': [':blast', ' last buffer'],
      \ 'n': [':bnext', 'ﰴ next buffer'],
      \ 'p': [':bprevious', 'ﰱ previous buffer'],
      \ 'd': [':bdelete %', ' delete current buffer'],
      \ 'S': [':Startify', ' launch startify'],
      \}
let g:which_key_map.b.g = 'ﰷ go to buffer'
let g:which_key_map.b.D = ' delete(s)'

" Coc Mapping
" coc plugin config ~/.config/nvim/config/plugins/coc.vim
" additional mapping on line 80
let g:which_key_map.c = {
      \ 'name': '[ﮒ]coc',
      \ ' ': ['<Esc>', ' close'],
      \ 'a' : ['<Plug>(coc-codeaction)', 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)', 'selected action'],
      \ 'c' : [':CocList commands', 'commands'],
      \ 'C' : [':CocConfig', 'open config file'],
      \ 'd' : ['<Plug>(coc-definition)', 'definition'],
      \ 'D' : [':CocList diagnostics', 'diagnostics'],
      \ 'e' : [':CocList extensions', 'extensions'],
      \ 'f' : ['<Plug>(coc-format)', 'format'],
      \ 'h' : 'hover documentation',
      \ 'i' : ['<Plug>(coc-implementation)', 'implementation'],
      \ 'I' : 'install extension(s)',
      \ 'n' : ['<Plug>(coc-diagnostic-next)', 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)', 'next error'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)', 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)', 'prev error'],
      \ 'r' : ['<Plug>(coc-rename)', 'rename'],
      \ 'R' : [':CocRestart', 'restart'],
      \ 's' : [':CocList outline', 'current document symbols'],
      \ 'S' : [':CocList -I symbols', 'workspace symbols'],
      \ 't' : ['<Plug>(coc-type-definition)', 'type definition'],
      \ 'u' : 'uninstall extension(s)',
      \ 'U' : [':CocUpdate', 'update CoC'],
      \ '^' : ['<Plug>(coc-references)', 'references'],
      \}

" File Mapping
nnoremap <Leader>fe :e<SPACE>
let g:which_key_map.f = {
      \ 'name': '[]file',
      \ ' ': ['<Esc>', ' close'],
      \ 'W': [':wq', ' file write and exit'],
      \ 'e': 'ﱐ edit file(s)',
      \ 'w': [':w', ' file write / save'],
      \ 'x': [':CocCommand explorer', '况open explorer'],
      \}

" Git Mapping
" fugnitive config ~/.config/nvim/config/plugins/fugnitive.vim
" signify config ~/.config/nvim/config/plugins/signify.vim
let g:which_key_map.g = {
      \ 'name': '[]git',
      \ ' ': ['<Esc>', ' close'],
      \ 'a': [':Git add %', ' add curent file'],
      \ 'A': [':Git add .', ' add all file'],
      \ 'c': [':Git commit', ' commit'],
      \ 'd': [':Git diff', ' diff'],
      \ 'D': [':Gdiffsplit', ' diff split'],
      \ 'g': [':Ggrep', ' git grep'],
      \ 'h': [':SignifyToggle', ' toggle signify'],
      \ 'H': [':SignifyToggleHighlight', ' toogle signify highlight'],
      \ 'j': ['<plug>(signify-next-hunk)', 'ﰚ next hunk'],
      \ 'k': ['<Plug>(signify-prev-hunk)', 'ﰜ prev hunk'],
      \ 's': [':Gstatus', ' status'],
      \ 'l': [':Glog', ' log'],
      \ 'p': [':Git push', ' push'],
      \ 'P': [':Git pull', ' pull'],
      \ 'r': [':GRemove', ' remover'],
      \}


" Motion (easy motio)
let g:which_key_map.m = {
      \ 'name': '[ﮙ]motion',
      \ ' ': ['<Esc>', ' close'],
      \ 'f': ['<Plug>(easymotion-f)', 'ﮜ char forward'],
      \ 'F': ['<Plug>(easymotion-F)', 'ﮜ char backward'],
      \ 't': ['<Plug>(easymotion-t)', 'ﮜ before char forward'],
      \ 'T': ['<Plug>(easymotion-T)', 'ﮜ before char backward'],
      \ 'w': ['<Plug>(easymotion-w)', '  word forward'],
      \ 'W': ['<Plug>(easymotion-W)', '  forward'],
      \ 'b': ['<Plug>(easymotion-b)', '  word backward'],
      \ 'B': ['<Plug>(easymotion-B)', '  WORD backward'],
      \ 'e': ['<Plug>(easymotion-e)', '  word forward'],
      \ 'E': ['<Plug>(easymotion-E)', '  forward'],
      \ 'ge': ['<Plug>(easymotion-ge)', '  word backward'],
      \ 'gE': ['<Plug>(easymotion-gE)', '  WORD backward'],
      \ 'j': ['<Plug>(easymotion-j)', ' below'],
      \ 'k': ['<Plug>(easymotion-k)', ' above'],
      \ 'n': ['<Plug>(easymotion-n)', '怜next search forward'],
      \ 'N': ['<Plug>(easymotion-N)', '玲previous search backward'],
      \ 's': ['<Plug>(easymotion-s)', ' search char forward and backward']
      \}

" Plug Mapping
let g:which_key_map.p = {
      \ 'name': '[]plugin',
      \ ' ': ['<Esc>', ' close'],
      \ 's': [':PlugStatus', ' show status'],
      \ 'd': [':PlugDiff', ' show diff'],
      \ 'c': [':PlugClean', 'ﮤ clean plugin(s)'],
      \ 'i': [':PlugInstall', 'ﮣ install plugin(s)'],
      \ 'u': [':PlugUpdate', 'ﮮ updated plugin(s)'],
      \ 'U': [':PlugUpgrade', ' self upgrade'],
      \}

" Search Mapping
nnoremap <silent><Leader>sb :buffers<SPACE>
let g:which_key_map.s = {
      \ 'name': '[ﰍ]search',
      \ ' ': ['<Esc>', ' close'],
      \ 'c': [':Commands', ' commands'],
      \ 'f': [':Files', ' files'],
      \ 'g': [':GFiles', ' git files'],
      \ 'G': [':GFiles?', ' modified git files'],
      \ 'b': '﬘ buffers',
      \ 'B': [':Buffers', ' fzf buffers'],
      \ 'l': [':BLines', ' lines buffer'],
      \ 'L': [':Lines', '靖lines'],
      \ 'r': [':Rg', 'ﳳ text'],
      \ 'h': [':History', ' history'],
      \}

" Terminal Mapping
let g:which_key_map.t = {
      \ 'name': '+terminal',
      \ ' ': ['<Esc>', ' close'],
      \ 'g': [':FloatermNew lazygit', 'lazygit'],
      \ 'f': [':FloatermNew fzf', 'fzf'],
      \ 'p': [':FloatermNew python', 'python'],
      \ 'r': [':FloatermNew ranger', 'ranger'],
      \ 't': [':FloatermToggle', 'toggle terminal'],
      \ 'n': [':FloatermNew node', 'node'],
      \ 'y': [':FloatermNew ytop', 'ytop'],
      \ 'u': [':FloatermNew ncdu', 'ncdu'],
      \ ';': [':FloatermNew --wintype=popup --height=10', 'node'],
      \}

" VIM Config Mapping
" For syntax highlight
" highlight current highlight-group
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nmap <Leader>vH :call <SID>SynStack()<CR>
nmap <Leader>vh :h<Space>

let g:which_key_map.v = {
      \ 'name': '[]vim',
      \ ' ': ['<Esc>', ' close'],
      \ 'i': [':IndentLinesToggle', ' toogle indentline'],
      \ 'h': 'ﲉ help',
      \ 'H': ' highlight current group',
      \ 'n': [':set number', ' set number'],
      \ 'N': [':set nonumber', '料set no number'],
      \ 'r': [':set relativenumber', '尿set relativenumber'],
      \ 'R': [':set norelativenumber', ' set no relativenumber'],
      \ 'c': [':e $MYVIMRC', ' edit vim config'],
      \ 'C': [':ColorToggle', ' toggle hex color'],
      \ 's': [':source $MYVIMRC', '勒reload vim config source'],
      \}

" Window split Mapping
nnoremap <silent><Leader>wV :vsplit<SPACE>
nnoremap <silent><Leader>wH :split<SPACE>
let g:which_key_map.w = {
      \ 'name': '[]window',
      \ ' ': ['<Esc>', ' close'],
      \ 'z': [':Goyo', ' Zen Mode'],
      \ 'v': [':vsplit', ' virtual split'],
      \ 'h': [':split', ' horizontal split'],
      \}
let g:which_key_map.w.V = ' vertical split a file'
let g:which_key_map.w.H = ' horizontal split a file'


call which_key#register(' ', "g:which_key_map")

" =============================================================================
"                               ____  _____  ____ 
"                              ( ___)(  _  )( ___)
"                               )__)  )(_)(  )__) 
"                              (____)(_____)(__)  
" =============================================================================
