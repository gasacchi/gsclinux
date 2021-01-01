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
"   __    ____  ___  _   _  ____  __    ____  _  _  ____        _  _  ____  __  __ 
"  (  )  (_  _)/ __)( )_( )(_  _)(  )  (_  _)( \( )( ___)      ( \/ )(_  _)(  \/  )
"   )(__  _)(_( (_-. ) _ (   )(   )(__  _)(_  )  (  )__)        \  /  _)(_  )    ( 
"  (____)(____)\___/(_) (_) (__) (____)(____)(_)\_)(____)  ()    \/  (____)(_/\/\_)
" ===================================================
" Author:  Gasacchi
" website: https://gasacchi.com
" licence: GPL
" ===================================================

" enable lightline
" \   'colorscheme':'gruvbox_material',
set laststatus=2
let g:lightline = {
\   'colorscheme':'ayu',
\   'active': {
\     'left':[[ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ]]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head',
\   }
\}
" let g:lightline.separator = {
" \   'left': "\ue0b4", 'right': "\ue0b6"
" \}
" let g:lightline.subseparator = {
" \   'left': "\ue0b5", 'right': "\ue0b7"
" \}
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['close']]
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}

" buffer line config
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
let g:lightline#bufferline#unnamed = "[NO NAME]"
let g:lightline#bufferline#filename_modifier= ":."
let g:lightline#bufferline#more_buffers = "..."
let g:lightline#bufferline#modified = " +"
let g:lightline#bufferline#read_only = " -"
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0

" ===================================================
"   ____  _____  ____ 
"  ( ___)(  _  )( ___)
"   )__)  )(_)(  )__) 
"  (____)(_____)(__)  
" ===================================================

