call plug#begin('~/.vim/plugged')
  "Color Schemes
  Plug 'dracula/vim'
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/unite.vim'
  Plug 'Shougo/vimfiler.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'ajmwagar/vim-deus'
  Plug 'baines/vim-colorscheme-thaumaturge'
  Plug 'beigebrucewayne/turtles'
  Plug 'calviken/vim-gdscript3'
  Plug 'chrisbra/Colorizer'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'digitaltoad/vim-pug'
  Plug 'elzr/vim-json'
  Plug 'ervandew/supertab'
  Plug 'gabrielelana/vim-markdown'
  Plug 'godlygeek/csapprox'
  Plug 'hashivim/vim-terraform'
  Plug 'hzchirs/vim-material'
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-easy-align'
  
  "Javascript Syntax
  Plug 'pangloss/vim-javascript'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'yuezk/vim-js'
  Plug 'othree/yajs.vim'
  Plug 'othree/es.next.syntax.vim'

  Plug 'powerline/powerline'
  Plug 'raimondi/delimitMate'
  Plug 'rakr/vim-one'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scheakur/vim-scheakur'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'sunaku/vim-ruby-minitest'
  Plug 'tomasr/molokai'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-dotenv'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-flagship'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-vinegar'
  Plug 'tyrannicaltoucan/vim-quantum'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-ruby/vim-ruby'
  Plug 'vim-syntastic/syntastic'
  Plug 'vwxyutarooo/nerdtree-devicons-syntax'
  Plug 'whatyouhide/vim-gotham'
  Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

" let g:vim_jsx_pretty_template_tags = ['html']
" let g:vim_jsx_pretty_colorful_config = 1

let g:vim_jsx_pretty_enable_jsx_highlight = 0

    highlight def link jsxTag              Identifier
    highlight def link jsxTagName          Identifier
    highlight def link jsxPunct            Identifier
    highlight def link jsxComponentName    Identifier
    highlight def link jsxString           String
    highlight def link jsxNameSpace        Function
    highlight def link jsxComment          Error
    highlight def link jsxAttrib           Type
    highlight def link jsxCloseTag         Identifier
    highlight def link jsxCloseString      Identifier
"
"NERD Commenter
"-------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 0
"let NERDTreeHijackNetrw = 1

"let g:deoplete#enable_at_startup = 1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-d> :e.<CR>
map <Leader>b :b<CR>

syntax enable
set background=dark
colorscheme altone
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#3e4654'
let g:airline_theme='one'
let g:jsx_ext_required = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set conceallevel=0
let g:vim_json_syntax_conceal = 0
set nowrap
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
set encoding=utf8
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Fast syntax highlighting
" ---------------------------------------------------------------------------------
set    lazyredraw
let NERDTreeHighlightCursorline = 0
"set    notimeout
"set    ttimeout
"set    ttimeoutlen=100
"syntax sync minlines=256
"set    synmaxcol=750

" Tabs and indentions
" ---------------------------------------------------------------------------------
set smartindent
set smarttab
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

set number
"set relativenumber
set noshowcmd
set ttyfast
set mouse=nv
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
if has('mouse_sgr')
  set ttymouse=sgr
endif
set updatetime=100
set clipboard=unnamed
let g:jsx_ext_required = 0

"-Mappings---------------
"------------------------
" Fuzzy Finder
nmap <Leader>f :Files<CR>
" Quick write
nmap <Leader>w :w<CR>
" Quick Exit
nmap <Leader>q :qall! <CR>
nmap <Leader>\ :vs    <CR>
nmap <Leader>- :sp    <CR>
nmap <Leader>n :noh   <CR>
nmap <Leader>d 666dd  <CR>

" Minitest syntax highlighting
set completefunc=syntaxcomplete#Complete

" No Swap file Warnings
set shortmess=A
