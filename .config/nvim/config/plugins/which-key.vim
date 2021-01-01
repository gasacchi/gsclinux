" ===================================================
"    ___    __    ___    __    ___  ___  _   _  ____ 
"   / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _)
"  ( (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_ 
"   \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
" ===================================================
"                 _  _  ____  __  __ 
"                ( \/ )(_  _)(  \/  )
"                 \  /  _)(_  )    ( 
"                  \/  (____)(_/\/\_)
" ===================================================
"   _    _  _   _  ____  ___  _   _           _  _  ____  _  _        _  _  ____  __  __ 
"  ( \/\/ )( )_( )(_  _)/ __)( )_( )   ___   ( )/ )( ___)( \/ )      ( \/ )(_  _)(  \/  )
"   )    (  ) _ (  _)(_( (__  ) _ (   (___)   )  (  )__)  \  /        \  /  _)(_  )    ( 
"  (__/\__)(_) (_)(____)\___)(_) (_)         (_)\_)(____) (__)   ()    \/  (____)(_/\/\_)
" ===================================================
" Author:  Gasacchi
" website: https://gasacchi.com
" licence: GPL
" ===================================================

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
"
" Define a separator
let g:which_key_sep = '↔'

" hide status
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" show faster
set timeoutlen=300

" change highlight
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator Constant
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function
highlight default link WhichKeyFloating Pmenu

" ===================================================
"   ____  _____  ____ 
"  ( ___)(  _  )( ___)
"   )__)  )(_)(  )__) 
"  (____)(_____)(__)  
" ===================================================
