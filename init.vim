call plug#begin('~/.vim/plugged')
Plug 'mattn/gist-vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ajmwagar/vim-deus'
Plug 'whatyouhide/vim-gotham'
Plug 'gabrielelana/vim-markdown'
Plug 'calviken/vim-gdscript3'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/Colorizer'
Plug 'tpope/vim-flagship'
Plug 'Shougo/vimfiler.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'raimondi/delimitMate'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'scheakur/vim-scheakur'
Plug 'jelera/vim-javascript-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'tomasr/molokai'
Plug 'baines/vim-colorscheme-thaumaturge'
Plug 'hzchirs/vim-material'
Plug 'beigebrucewayne/turtles'
Plug 'dracula/vim'
Plug 'rakr/vim-one'
Plug 'godlygeek/csapprox'
Plug 'vim-airline/vim-airline'
Plug 'powerline/powerline'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/unite.vim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ervandew/supertab'
Plug 'tpope/vim-dotenv'
Plug 'elzr/vim-json'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

"let g:deoplete#enable_at_startup = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <silent> <C-n> :NERDTreeToggle<CR>
syntax enable
set background=dark
colorscheme one
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
set    notimeout
set    ttimeout
set    ttimeoutlen=100
syntax sync minlines=256
set    synmaxcol=750

" Tabs and indentions
" ---------------------------------------------------------------------------------
set smartindent
set smarttab
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

set number
set relativenumber
set noshowcmd
set lazyredraw
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
