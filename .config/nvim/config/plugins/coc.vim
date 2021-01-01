" ========================================================================
"             ___    __    ___    __    ___  ___  _   _  ____ 
"            / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _)
"           ( (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_ 
"            \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
" ========================================================================
"                          _  _  ____  __  __ 
"                         ( \/ )(_  _)(  \/  )
"                          \  /  _)(_  )    ( 
"                           \/  (____)(_/\/\_)
" ========================================================================
"                 ___  _____  ___        _  _  ____  __  __ 
"                / __)(  _  )/ __)      ( \/ )(_  _)(  \/  )
"               ( (__  )(_)(( (__        \  /  _)(_  )    ( 
"                \___)(_____)\___)  ()    \/  (____)(_/\/\_)
" ========================================================================
" Author:  Gasacchi
" website: https://gasacchi.com
" licence: GPL
" ========================================================================

" Coc Config
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
" plugin.
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

augroup mygroup
  autocmd!
" Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of current line
" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature
"of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h
" coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"COC MAPPING

" Install / Uninstall extension(s)
nnoremap <leader>cI :CocInstall<SPACE>
nnoremap <leader>cu :CocUnInstall<SPACE>

" Use K to show documentation in preview window
nnoremap <silent><Leader>ch :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" =======================================================================
"                              ____  _____  ____ 
"                             ( ___)(  _  )( ___)
"                              )__)  )(_)(  )__) 
"                             (____)(_____)(__)  
" =======================================================================
