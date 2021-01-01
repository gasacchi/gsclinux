" =================================================== ___    __    ___    __
" ___  ___  _   _  ____ / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _) (
" (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_
" \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
" =================================================== _  _  ____  __  __ ( \/
" )(_  _)(  \/  ) \  /  _)(_  )    ( \/  (____)(_/\/\_)
" =================================================== ____  __    __  __  ___
" _  _  ____  __  __ (  _ \(  )  (  )(  )/ __)      ( \/ )(_  _)(  \/  ))___/
" )(__  )(__)(( (_-.       \  /  _)(_  )    ( (__)  (____)(______)\___/  ()
" \/  (____)(_/\/\_) ===================================================
" Author:  Gasacchi website: https://gasacchi.com
" License: GPL
" ===================================================


call plug#begin('~/.config/nvim/plugged')

" Startify
Plug 'mhinz/vim-startify'

" ZEN goyo
Plug 'junegunn/goyo.vim'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" VIM Commentary
Plug 'tpope/vim-commentary'

" VIM Diff Sign
Plug 'mhinz/vim-signify'

" VIM Which Key
Plug 'liuchengxu/vim-which-key'

" Indent line
Plug 'Yggdroot/indentLine'

" Vim easy motion
Plug 'easymotion/vim-easymotion'

" Surrounding text
Plug 'tpope/vim-surround'

" Plug for auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin for fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug for auto pair
Plug 'jiangmiao/auto-pairs'

" Plugin for git manage
Plug 'tpope/vim-fugitive'

" Plugin for rainbox parenthesis 
Plug 'luochen1990/rainbow'

" Plugin highlight hex color
Plug 'chrisbra/Colorizer'

" theme
Plug 'ayu-theme/ayu-vim'

" lighline and bufferline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" syntax support
Plug 'amiralies/vim-rescript'

call plug#end()

" ===================================================
"   ____  _____  ____ 
"  ( ___)(  _  )( ___)
"   )__)  )(_)(  )__) 
"  (____)(_____)(__)  
" ===================================================

