call plug#begin('~/.vim/plugged')
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
set expandtab
set tabstop=2
set sw=2
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
set clipboard+=unnamedplus 
let g:jsx_ext_required = 0


" OmniSharp Stuff "
"let g:OmniSharp_server_path='/home/mspiers/.omnisharp/omnisharp-roslyn/run'
" OmniSharp won't work without this setting
"filetype plugin on

" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server
"let g:OmniSharp_timeout = 5

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
"set completeopt=longest,menuone,preview

" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono).
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
"set previewheight=5

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
"let g:ale_linters = { 'cs': ['OmniSharp'] }

"augroup omnisharp_commands
"    autocmd!
"
"    " When Syntastic is available but not ALE, automatic syntax check on events
"    " (TextChanged requires Vim 7.4)
"    " autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck
"
"    " Show type information automatically when the cursor stops moving
"    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
"
"    " The following commands are contextual, based on the cursor position.
"    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
"    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
"    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
"    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
"
"    " Finds members in the current buffer
"    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>
"
"    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
"    "autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
"    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
"    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
"    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>
"
"
"    " Navigate up and down by method/property/field
"    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
"    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
"augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
"nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
"xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
"nnoremap <Leader>nm :OmniSharpRename<CR>
"nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
"command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

"nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
"nnoremap <Leader>ss :OmniSharpStartServer<CR>
"nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Add syntax highlighting for types and interfaces
"nnoremap <Leader>th :OmniSharpHighlightTypes<CR>

" Enable snippet completion
" let g:OmniSharp_want_snippet=1
