set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'crusoexia/vim-monokai'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'flowtype/vim-flow'
Plugin 'Valloric/MatchTagAlways'
Plugin 'w0rp/ale'
Plugin 'othree/html5.vim'
Plugin 'ap/vim-css-color'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'prettier/vim-prettier', { 'branch': 'release/1.x' }
Plugin 'Yggdroot/indentLine'
Plugin 'rstacruz/vim-closer'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'mhinz/vim-grepper'
Plugin 'junegunn/vim-easy-align'
Plugin 'mhinz/vim-startify'
Plugin 'wavded/vim-stylus'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'chaoren/vim-wordmotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1

" onedark.vim => Place onedark.vim/autoload/airline/themes/onedark.vim in your ~/.vim/autoload/airline/themes/
let g:airline_theme = 'onedark'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" map <C-t> :NERDTreeToggle<CR>
" let g:NERDTreeShowHidden=1

" Let backspace be more friendly
let g:jsx_ext_required = 0

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
    syntax on
endif

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch    " Highlight search
    set incsearch   " Search as you type
endif

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

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
    filetype plugin indent on
endif

" Turn on filetype detection
filetype on

" Filetype indentation
filetype plugin indent on

autocmd BufNewFile,BufRead *.zcml set ft=xml
autocmd BufNewFile,BufRead *.load set ft=htmldjango

" Set whitespace managing for every filetype, overriding standard
" Configure vim to be PEP8 compliant when editing Python code
autocmd FileType xml,htmldjango,python,python.django setlocal ts=4 sts=4 sw=4 expandtab
" cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType javascript,js,jsx,ts setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType makefile setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd FileType tex setlocal wm=3

autocmd FileType python,python.django set colorcolumn=80

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
" set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=ni		" Enable mouse usage (all modes)
set hlsearch
set cursorline
set foldmethod=indent
set number

set backspace=indent,eol,start

" colorscheme monokai
colorscheme onedark

" Enable folding
autocmd FileType python,xml,html,htmldjango,python.django,javascript,css set foldmethod=indent

" Configure vim-flake8
" let g:flake8_cmd="/Users/pieronicolli/Lab/utils/bin/flake8" " set custom flake8 binary
" let g:flake8_show_in_gutter=1 show errors in gutter
" autocmd BufWritePost *.py call Flake8() automatically run flake8 when saving


" sane text files
"set fileformat=unix
set encoding=utf-8

set tabstop=4 shiftwidth=4 expandtab

"autocompletion with ctrl+space
inoremap <c-space> <c-n>
inoremap <Nul> <c-n>

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

autocmd BufRead,BufReadPost,BufNewFile *.pt set ft=xml
autocmd FileType pt set sw=4 ts=4 expandtab
autocmd FileType xml set sw=4 ts=4 expandtab
autocmd FileType html set sw=4 ts=4 expandtab

set backupcopy=yes

" Configure ALE
let g:ale_linters = {}
let g:ale_linters['c'] = ['gcc', 'cppcheck']
let g:ale_linters['Dockerfile'] = ['hadolint']
let g:ale_linters['css'] = ['stylelint']
let g:ale_linters['javascript'] = ['eslint', 'flow']
let g:ale_linters['python'] = ['bandit', 'isort']
let g:ale_linters['sass'] = ['stylelint']
let g:ale_linters['scss'] = ['stylelint']
let g:ale_linters['sh'] = ['shellcheck']
let g:ale_linters['xml'] = ['xmllint']
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier', 'prettier-eslint', 'eslint']
let g:ale_fixers['python'] = ['black', 'isort']
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma'
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = '💩' " could use emoji
let g:ale_sign_warning = '⚠️' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says: %s'
" Enable completion where available.
" let g:ale_completion_enabled = 1
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

" Configure vim-flow
let g:flow#showquickfix = 0
let g:flow#enable = 0 " This is handled by ale
let g:flow#omnifunc = 1

" Configs for elzr/vim-json
" to keep your conceal setting
let g:vim_json_syntax_conceal = 0
let g:indentLine_setConceal = 0
let g:indentLine_concealcursor = ""

" Use ag in :Ack if available, otherwise falls back to ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Configure vim-markdown
let g:vim_markdown_no_extensions_in_markdown = 1

" To ensure that editorconfig works well with Tim Pope's fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Vim better whitespace conf
autocmd FileType scss,js,py,html,sh autocmd BufEnter <buffer> EnableStripWhitespaceOnSave

autocmd BufNewFile,BufRead *.ts set ft=js

" Prettier plugin config
" let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

nnoremap <leader>g :Grepper -tool ack<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Mappings for vim-minimap
let g:minimap_toggle='<leader>gt'

" Netrw cnfigs
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_alto = 1
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
" noremap <leader>t :Vexplore<cr>

" :terminal
noremap <leader>t :vertical terminal<cr>
noremap <leader>n :NERDTree<cr>
