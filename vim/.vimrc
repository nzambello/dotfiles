
"""""""""""""""""""""""""""""""""""""
"                                   "
"   nzambello vimrc configuration   "
"                                   "
"""""""""""""""""""""""""""""""""""""

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible



"------------------------------------------------------------
" MAPPINGS SUMMARY
"
" NOTE: expect leader = \
"
" \ n               Open NerdTree
" ctrl+space        Show autocomplete
" \ a n             ALE next
" \ a p             ALE prev
" K                 Show diagnostics or docs in popup
" \ g               Grep files in CWD (asks for a pattern)
" \ g t             Toggle minimap
" \ t               Open a new vertical buffer with default terminal
" \ T               Open a new horizontal buffer with default terminal
" ctrl+p            Open ctrlp buffer for fuzzy find
" g d               CoC: go to definition
" g y               CoC: go to type definition
" g i               CoC: go to implementation
" g r               CoC: go to references
"



"------------------------------------------------------------
" Plugin list and install
" Using https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" Theming and colors
Plug 'joshdick/onedark.vim'
" Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'

" Language, syntax and env support
Plug 'sheerun/vim-polyglot'
Plug 'leafgarland/typescript-vim'
Plug 'flowtype/vim-flow'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Completion, linting and formatting
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Code utilities
Plug 'Valloric/MatchTagAlways'
Plug 'rstacruz/vim-closer'
Plug 'scrooloose/nerdcommenter'
Plug 'alvan/vim-closetag'

" Vim mappings and motions
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'chaoren/vim-wordmotion'

" Explore utilities
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
" Plug 'severin-lemaignan/vim-minimap'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()



"------------------------------------------------------------
" Features and options
"
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
"
" Turn on filetype detection
filetype on

" Filetype indentation
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Always display the status line, even if only one window is displayed
set laststatus=2

" enable 256 colors
set t_Co=256

" highlight search
set hlsearch

" search as you type
set incsearch

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let g:hybrid_transparent_background = 1

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Auto reload vimrc when saved
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Show partial commands in the last line of the screen
set showcmd

" Better command-line completion
set wildmenu

" Show matching brackets
set showmatch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Highlight the screen line of the cursor with CursorLine
set cursorline

" Lines with equal indent form a fold
set foldmethod=indent

" Display line numbers on the left
set number

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" turn backup on
set backupcopy=yes

" sane text files
set encoding=utf-8

" Default indentation settings for using 4 spaces instead of tabs.
set tabstop=4 shiftwidth=4 expandtab

" syntax color scheme
colorscheme onedark
" colorscheme codedark

" autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>


"------------------------------------------------------------
" File type config
"
" Syntax associations for file types
autocmd BufNewFile,BufRead *.zcml set ft=xml
autocmd BufNewFile,BufRead *.overrides set ft=less
autocmd BufNewFile,BufRead *.variables set ft=less
autocmd BufNewFile,BufRead *.pt set ft=html syntax=xml

" Set whitespace managing for every filetype, overriding standard
autocmd FileType xml,htmldjango,python,python.django setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript,js,jsx,ts setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType makefile setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType tex setlocal wm=3
autocmd FileType pt set sw=4 ts=4 expandtab
autocmd FileType xml set sw=4 ts=4 expandtab
autocmd FileType html set sw=4 ts=4 expandtab

" Configure vim to be PEP8 compliant when editing Python code
autocmd FileType python,python.django set colorcolumn=80

" Set highlight sync
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" To get correct comment highlighting (from CoC)
autocmd FileType json syntax match Comment +\/\/.\+$+


"------------------------------------------------------------
" vim better whitespace
"
" Ref: ntpeters/vim-better-whitespace
autocmd FileType scss,js,py,html,sh autocmd BufEnter <buffer> EnableStripWhitespaceOnSave


"------------------------------------------------------------
" airline config
"
" Ref: vim-airline/vim-airline vim-airline/vim-airline-themes

let g:airline_powerline_fonts = 1

" onedark.vim => Place onedark.vim/autoload/airline/themes/onedark.vim in your ~/.vim/autoload/airline/themes/
let g:airline_theme = 'onedark'
" let g:airline_theme = 'codedark'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



"------------------------------------------------------------
" NerdTree config
"
" Ref: scrooloose/nerdtree
noremap <leader>n :NERDTreeToggle<cr>
noremap <leader>ns :NERDTreFinde<cr>
let g:NERDTreeShowHidden=1
let NerdTreeIgnore=['\.node_modules$']

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


"------------------------------------------------------------
" NerdCommenter config
"
" Ref: scrooloose/nerdcommenter
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 0

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1



"------------------------------------------------------------
" ALE config
"
" Ref: w0rp/ale

let g:ale_linters = {}
let g:ale_linters['c'] = ['gcc', 'cppcheck']
let g:ale_linters['css'] = ['stylelint', 'prettier']
let g:ale_linters['javascript'] = ['eslint', 'flow']
let g:ale_linters['python'] = ['bandit', 'black', 'isort']
let g:ale_linters['sass'] = ['stylelint', 'prettier']
let g:ale_linters['scss'] = ['stylelint', 'prettier']
let g:ale_linters['sh'] = ['shellcheck']
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier', 'prettier-eslint', 'eslint']
let g:ale_fixers['python'] = ['black']
let g:ale_fixers['css'] = ['prettier']
let g:ale_fixers['scss'] = ['prettier']
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma --spaces 2'

highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)

let g:ale_sign_error = '💩' " could use emoji
let g:ale_sign_warning = '⚠️' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']

" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says: %s'

" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>



"------------------------------------------------------------
" vim flow config
"
" Ref: flowtype/vim-flow

let g:flow#showquickfix = 0
let g:flow#enable = 0 " This is handled by CoC
let g:flow#omnifunc = 1



"------------------------------------------------------------
" CoC config
"
" Ref: neoclide/coc.nvim
"
" install extensions
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-python',
  \ 'coc-tabnine',
  \ ]

" mappings and tricks for hover popup
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


"------------------------------------------------------------
" vim-grepper config
"
" Ref: mhinz/vim-grepper
"
" Use ag in :Ack if available, otherwise falls back to ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Mappings
nnoremap <leader>g :Grepper -tool ack<cr>



"------------------------------------------------------------
" editorconfig
"
" Ref: editorconfig/editorconfig-vim
"
" To ensure that editorconfig works well with Tim Pope's fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']



"------------------------------------------------------------
" prettier
"
" Ref: prettier/vim-prettier

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync



"------------------------------------------------------------
" easy align
"
" Ref: junegunn/vim-easy-align
"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



"------------------------------------------------------------
" minimap
"
" Ref: severin-lemaignan/vim-minimap
"
" Mappings for vim-minimap
" let g:minimap_toggle='<leader>gt'



"------------------------------------------------------------
" integrated terminal mappings
"
" :terminal
noremap <leader>t :vertical terminal<cr>
noremap <leader>T :terminal<cr>



"------------------------------------------------------------
" ctrlp
"
" Ref: ctrlpvim/ctrlp.vim
"
" Set mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



"------------------------------------------------------------
" vim-closetag
"
" Ref: alvan/vim-closetag
"
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.pt,*.zcml,*.jsx'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.pt, *.zcml'

" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 0

" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
