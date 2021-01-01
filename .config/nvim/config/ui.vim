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
"   __  __  ____        _  _  ____  __  __ 
"  (  )(  )(_  _)      ( \/ )(_  _)(  \/  )
"   )(__)(  _)(_        \  /  _)(_  )    ( 
"  (______)(____)  ()    \/  (____)(_/\/\_)
" ===================================================
" Author:  Gasacchi
" website: https://gasacchi.com
" licence: GPL
" ===================================================

" Support true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Theme
colorscheme ayu
let ayucolor="dark"


" Transparent
hi Normal guibg=NONE ctermbg=NONE


" {{{ Status Line
" {{{ Theme
"function! Hi(group, guibg, guifg, gui)
"  exec "hi " . a:group . " guibg=" . a:guibg ." guifg=" . a:guifg . " gui=" . a:gui
"endfunction
"let s:bg='#030D00'
"let s:comment='#022400'
"let s:darker='#003B00'
"let s:dark='#005200'
"let s:light='#00C729'
"let s:lighter='#80E544'
"let s:warn='#FFCB47'
"let s:danger='#E83151'
"" }}}
"
"" {{{ Basic: Grup                 bg                    fg                    gui
"
"" set laststatus=2
"call Hi(     'User1',            'none',              s:warn,      'bold' )
"call Hi(     'User2',            'none',              s:darker,      'bold' )
"call Hi(     'User3',            'none',              s:light,      'bold' )
"call Hi(     'User3',            'none',              s:light,      'bold' )
"" call Hi(     'ColorColumn',            s:darker,       '',      'bold' )
"call Hi(     'Todo',            'none',       s:warn,      'bold' )
"call Hi(     'CursorColumn',            s:darker,       '',      'bold' )
"call Hi(     'CursorLine',            s:darker,       '',      'bold' )
"call Hi(     'CursorLine',            s:darker,       '',      'bold' )
"call Hi(     'DiffAdd',            '',       s:lighter,      'bold' )
"call Hi(     'DiffChange',            '',       s:warn,      'bold' )
"call Hi(     'DiffDelete',            '',       s:danger,      'bold' )
"call Hi(     'DiffText',            '',         s:lighter,      'bold' )
"call Hi(     'ErrorMsg',            'none',         s:danger,      'bold' )
"call Hi(     'VertSplit',            'none',         s:darker,      'bold' )
"call Hi(     'SignColumn',           'none',        '' ,'bold' )
"call Hi(     'LineNr',           'none',        s:darker,'bold' )
"call Hi(     'CursorLineNr',           'none',        s:lighter,'bold' )
"call Hi(     'MatchParen',           'none',        s:danger,'underline,bold' )
"call Hi(     'MsgArea',               'none',            s:lighter,'none' )
"call Hi(     'MsgSeparator',               'none',            s:darker,'none' )
"call Hi(     'NormalNc',           'none',        s:darker,'none' )
"call Hi(     'Pmenu',               s:comment,        s:lighter,'none' )
"call Hi(     'PmenuSel',               s:dark,        s:lighter,'none' )
"call Hi(     'PmenuSbar',               s:comment,        s:light,'none' )
"call Hi(     'StatusLine',               'none',            'none','none' )
"call Hi(     'StatusLineNc',               'none',            s:darker,'none' )
"call Hi(     'TabLine',               'none',            s:light,'none' )
"call Hi(     'TabLineFill',               'none',            s:light,'none' )
"call Hi(     'TabLineSel',               'none',            s:lighter,'none' )
"
"" WhichKey
"call Hi(     'WhichKey',               'none',            s:lighter,'bold' )
"call Hi(     'WhichKeySeperator',               'none',            s:warn,'none' )
"call Hi(     'WhichKeyDesc',               'none',            s:danger,'none' )
"call Hi(     'WhichKeyGroup',               'none',            s:danger,'none' )
"
"" lighline and bufferline
"let s:p = {
"      \ 'normal': {},
"      \ 'inactive': {},
"      \ 'insert': {},
"      \ 'replace': {},
"      \ 'visual': {},
"      \ 'tabline': {},
"      \}
"let s:p.normal.left = [[ s:lighter, s:darker ]]
"let s:p.normal.right = [[ s:lighter, s:darker ]]
"let s:p.normal.middle = [[ s:lighter, s:comment ]]
"let s:p.inactive.right = [[ s:dark, s:comment ]]
"let s:p.inactive.left = [[ s:dark, s:comment ]]
"let s:p.inactive.middle = [[ s:dark, s:comment ]]
"let s:p.insert.left = [[ s:darker, s:lighter ]]
"let s:p.replace.left = [[ s:warn, s:danger ]]
"let s:p.visual.left = [[ s:danger, s:warn ]]
"let s:p.tabline.left = [[ s:lighter, s:comment ]]
"let s:p.tabline.tabsel = [[ s:darker, s:lighter ]]
"let s:p.tabline.middle = [[ s:lighter, s:comment ]]
"let s:p.tabline.right = [[ s:lighter, s:comment ]]
"let s:p.normal.error = [[ s:danger, s:comment ]]
"let s:p.inactive.warning = [[ s:danger, s:comment ]]
"
"let g:lightline#colorscheme#hacking#palette=lightline#colorscheme#fill(s:p)

" }}}

" ===================================================
"   ____  _____  ____ 
"  ( ___)(  _  )( ___)
"   )__)  )(_)(  )__) 
"  (____)(_____)(__)  
" ===================================================
